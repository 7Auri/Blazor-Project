using Hangfire;
using Hangfire.SqlServer;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using ProjectUnluCo.Context;
using ProjectUnluCo.Helpers;
using ProjectUnluCo.Models;
using ProjectUnluCo.Services;
using System;
using System.Text;

namespace ProjectUnluCo
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public virtual void ConfigureServices(IServiceCollection services)
        {
            services.Configure<SMTPConfigModel>(Configuration.GetSection("SMTPConfig"));
            services.AddScoped<IEmailSender, EmailSender>();
            services.AddDbContext<DBContext>(options => options.UseSqlServer(Configuration.GetConnectionString("Default")));
            

            services.AddHangfire(configuration => configuration
                    .SetDataCompatibilityLevel(CompatibilityLevel.Version_170)
                    .UseSimpleAssemblyNameTypeSerializer()
                    .UseRecommendedSerializerSettings()
                    .UseSqlServerStorage(Configuration.GetConnectionString("Default"), new SqlServerStorageOptions
                    {
                        CommandBatchMaxTimeout = TimeSpan.FromMinutes(5),
                        SlidingInvisibilityTimeout = TimeSpan.FromMinutes(5),
                        QueuePollInterval = TimeSpan.Zero,
                        UseRecommendedIsolationLevel = true,
                        DisableGlobalLocks = true
                        
                    }));

            services.AddHangfireServer();

            services.Configure<AppSettings>(Configuration.GetSection("AppSettings"));
            services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());
            

            services.AddIdentity<User, IdentityRole>(opt =>
            {
                
                opt.Password.RequireNonAlphanumeric = false;
                opt.SignIn.RequireConfirmedAccount = false;
                opt.SignIn.RequireConfirmedEmail = false;
                opt.Lockout.AllowedForNewUsers = true;
                opt.Lockout.DefaultLockoutTimeSpan = TimeSpan.FromMinutes(30);
                opt.Lockout.MaxFailedAccessAttempts = 3;
            })
               .AddEntityFrameworkStores<DBContext>()
               .AddDefaultTokenProviders();


            services.AddScoped<UserManager<User>>();
            services.AddScoped<IUserService, UserService>();
            services.AddAuthorization(auth =>
            {
                auth.AddPolicy("Bearer", new AuthorizationPolicyBuilder()
                    .AddAuthenticationSchemes(JwtBearerDefaults.AuthenticationScheme‌​)
                    .RequireAuthenticatedUser().Build());
            });
            services.AddAuthentication(options =>
            {
                options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
                options.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
            })
          .AddJwtBearer(options => options.TokenValidationParameters =
           new Microsoft.IdentityModel.Tokens.TokenValidationParameters
           {
               ValidateAudience = false,
               ValidAudience = Configuration["Jwt:Audience"],
               ValidateIssuer = false,
               ValidIssuer = Configuration["Jwt:Issuer"],
               ValidateLifetime = true,
               IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(Configuration["Jwt:Key"])),
               ClockSkew = TimeSpan.Zero

           });
            services.AddScoped<TokenGenerator>();
            services.AddControllers();
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "ProjectUnluCo", Version = "v1" });
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public virtual void  Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "ProjectUnluCo v1"));
            }



            app.UseRouting();
            app.UseAuthentication();
            app.UseAuthorization();
            
            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
           app.UseHangfireDashboard();
            
        }
    }
}
