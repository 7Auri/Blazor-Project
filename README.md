# ProjectUnluCo

https://user-images.githubusercontent.com/88002831/155859705-c8afe001-9056-478a-b78d-892b148e80c7.mp4

1.WebApi

a. Register:

- RegisterModel oluşturuldu ve gerekli validasyonlar yapıldı.
- UserService üzerinden gerekli işlemler yapılıyor.
- Kayıt olunduğunda "Hoşgeldin" e-maili gönderiliyor.
<img src="https://user-images.githubusercontent.com/88002831/155618356-be5e2e20-d5a1-4549-86d4-3dacaec28890.png" width="350" height="250">
- Herhangi bir başarısız işlemde hata mesajı veriliyor.


b. Login:

- LoginModel oluşturuldu ve gerekli validasyonlar yapıldı.
- UserService üzerinden gerekli işlemler yapılıyor.
- 3 kez password yanlış girildiğinde hesap 30 dakikalığına bloklanıyor ve bilgi e-maili gönderiliyor.
<img src="https://user-images.githubusercontent.com/88002831/155618431-19a6c6e9-fc03-4708-a166-7a5ab2ed0afa.png" width="350" height="250">
<img src="https://user-images.githubusercontent.com/88002831/155618269-aa7dab97-a70e-4e6a-a12b-c5dcc078e0bd.png" width="250" height="150">
- Jwt token üretiliyor ve herhangi bir authorization kontrolünde token kullanılabiliyor.

c. Email:

- EmailSender oluşturuldu.
- Asyn olarak gönderim sağlanıyor.
- Hangfire servis kullanıldı ve en geç 2 saniye içinde process gönderiliyor.
<img src="https://user-images.githubusercontent.com/88002831/155618210-646f1d49-48c2-44f2-a8d0-e98382d2962e.png" width="350" height="250">
<img src="https://user-images.githubusercontent.com/88002831/155618226-297c99b5-fb7d-44df-8a1a-07ebad4d64ee.png" width="350" height="250">
- Smtp entegrasyonu kullanıldı.

d. Category:

- Tüm kategoriler listeleniyor.
- Kategori id ve name'ne göre filtreleme yapılabiliyor.
- Yeni kategori eklenebiliyor ve mevcut olanlar güncellenebiliyor.

e. Product:

- IsOfferable'ye göre teklif verilebiliyor. False ise teklif yapılamıyor.
<img src="https://user-images.githubusercontent.com/88002831/155620319-2dd9bf1c-d734-4800-ae30-a58be54400ca.png" width="350" height="50">
<img src="https://user-images.githubusercontent.com/88002831/155859813-ce48d586-5039-42c4-90ce-78469695eef1.png" width="350" height="250">
- Kullanılan trigger ile ürünün orjinal fiyatının x yüzdesi alınabiliyor ve front-end tarafında seçilen yüzdeye göre offerprice belirlenebiliyor.
- Ürün ekleme için gerekli validasyonlar eklendi.
- Url ile image eklenebiliyor.
- Gerekli required'lerin tamamı eklendi.
- Blazor'da kategoriye göre ürünler ulaşmak mümkün.

f. Profil:
- Yaptığımız offerlar listelenebiliyor.
- Ürünlerimize gelen offerlar görülebiliyor.
- Gelen offerlara onay verilebiliyor.

g. Ekler:

- TokenGenerator, ProductController ve CategoryController için testler yazıldı.
 <img src="https://user-images.githubusercontent.com/88002831/155878254-d8e86fa5-4a17-4edf-941d-552a85ddb970.png" width="850" height="300">
- Trigger ve stored procedure eklendi. 
<img src="https://user-images.githubusercontent.com/88002831/155878215-64182b06-94da-432b-a869-543a97346dbe.png" width="850" height="300">
<img src="https://user-images.githubusercontent.com/88002831/155620246-ccb19387-1714-46f0-8e7b-c6f548058da3.png" width="450" height="300">



