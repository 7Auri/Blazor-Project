using Hangfire;
using Hangfire.MemoryStorage;
using Hangfire.SqlServer;
using Hangfire.Storage;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using ProjectUnluCo.Context;
using ProjectUnluCo.Models;
using ProjectUnluCo.Services;
using System;

namespace ProjectUnluCo.Test
{
    public class TestStartup : Startup
    {
        public TestStartup(IConfiguration configuration) : base(configuration)
        {

        }

        public override void ConfigureServices(IServiceCollection services)
        {
            services.AddControllers()
                .AddApplicationPart(typeof(Startup).Assembly);


            services.AddDbContext<DBContext>(options => options.UseInMemoryDatabase("Manager"));

            services.AddIdentity<User, IdentityRole>().AddEntityFrameworkStores<DBContext>().AddDefaultTokenProviders();

            services.AddAutoMapper(typeof(Startup).Assembly);

            services.AddScoped<IEmailSender,EmailSender>();

            services.AddScoped<TokenGenerator>();

            services.AddScoped<IUserService, UserService>();
            services.AddHangfire(configuration => configuration.UseMemoryStorage());
            services.AddTransient<IMonitoringApi, MemoryStorageMonitoringApi>();


        }
        

      
        public override void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            var scope = app.ApplicationServices.CreateScope();
            var context = scope.ServiceProvider.GetRequiredService<DBContext>();
            AddData(context);
            app.UseHangfireDashboard();
            app.UseHangfireServer();
            base.Configure(app, env);
        }

        private void AddData(DBContext context)
        {
            for (int i = 0; i < 20; i++)
            {
                Product pro = new();
                pro.Name = i.ToString();

                context.Products.Add(pro);
            }


            for (int i = 0; i < 20; i++)
            {
                Category cate = new();
                cate.Name = i.ToString();

                context.Categories.Add(cate);
            }
           
            context.SaveChanges();
        }
    }
}
