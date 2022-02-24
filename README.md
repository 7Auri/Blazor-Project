# ProjectUnluCo


1.WebApi

a. Register:

- RegisterModel oluşturuldu ve gerekli validasyonlar yapıldı.
- UserService üzerinden gerekli işlemler yapılıyor.
- Kayıt olunduğunda "Hoşgeldin" e-maili gönderiliyor.
![2022-02-24_00-11-41](https://user-images.githubusercontent.com/88002831/155618356-be5e2e20-d5a1-4549-86d4-3dacaec28890.png)
- Herhangi bir başarısız işlemde hata mesajı veriliyor.


b. Login:

- LoginModel oluşturuldu ve gerekli validasyonlar yapıldı.
- UserService üzerinden gerekli işlemler yapılıyor.
- 3 kez password yanlış girildiğinde hesap 30 dakikalığına bloklanıyor ve bilgi e-maili gönderiliyor.
 ![2022-02-24_00-16-44](https://user-images.githubusercontent.com/88002831/155618431-19a6c6e9-fc03-4708-a166-7a5ab2ed0afa.png)

 ![2022-02-24_00-53-08](https://user-images.githubusercontent.com/88002831/155618269-aa7dab97-a70e-4e6a-a12b-c5dcc078e0bd.png)
- Jwt token üretiliyor ve herhangi bir authorization kontrolünde token kullanılabiliyor.

c. Email:

- EmailSender oluşturuldu.
- Asyn olarak gönderim sağlanıyor.
- Hangfire servis kullanıldı ve en geç 2 saniye içinde process gönderiliyor.
![2022-02-24_00-19-50](https://user-images.githubusercontent.com/88002831/155618210-646f1d49-48c2-44f2-a8d0-e98382d2962e.png)
![2022-02-24_00-20-53](https://user-images.githubusercontent.com/88002831/155618226-297c99b5-fb7d-44df-8a1a-07ebad4d64ee.png)
- Smtp entegrasyonu kullanıldı.

d. Category:

- Tüm kategoriler listeleniyor.
- Kategori id ve name'ne göre filtreleme yapılabiliyor.
- Yeni kategori eklenebiliyor ve mevcut olanlar güncellenebiliyor.

e. Product:

- IsOfferable'ye göre teklif verilebiliyor. False ise teklif yapılamıyor.
 ![2022-02-24_00-59-50](https://user-images.githubusercontent.com/88002831/155620319-2dd9bf1c-d734-4800-ae30-a58be54400ca.png)
![2022-02-24_01-01-04](https://user-images.githubusercontent.com/88002831/155620335-9146baf2-98bf-4f53-a6c8-bb7f54f37780.png)

- Kullanılan trigger ile ürünün orjinal fiyatının x yüzdesi alınabiliyor ve front-end tarafında seçilen yüzdeye göre offerprice belirlenebiliyor.
- Ürün ekleme için gerekli validasyonlar eklendi.
- Url ile image eklenebiliyor.
- Gerekli required'lerin tamamı eklendi.
- Blazor'da kategoriye göre ürünler ulaşmak mümkün.

f. Ekler:

- TokenGenerator, ProductController ve CategoryController için testler yazıldı.
- Trigger ve stored procedure eklendi. 
![2022-02-24_00-23-16](https://user-images.githubusercontent.com/88002831/155620167-ed566f10-518d-4407-9981-655ff79fa889.png)
![2022-02-24_14-57-28](https://user-images.githubusercontent.com/88002831/155620246-ccb19387-1714-46f0-8e7b-c6f548058da3.png)

