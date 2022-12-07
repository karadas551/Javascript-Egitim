/*
while(şart){
    Şartımız gerçekleşene kadar çalışacak kodları yazıyoruz.
}
Örnek : 1 den 10 a kadar sayıların toplamını bulalım
*/

var i = 0;
var toplam = 0;

while( i<= 10){
    toplam += i //toplam = toplam + i;
    //toplam = 0 , i=0
    // toplam = 1; i=1 (i 1 artır toplamla topla toplama yaz)
    //toplam = 3 , i=2 (i 1 artır toplamla topla toplama yaz)
    //toplam = 6 , i=3 (i 1 artır toplamla topla toplama yaz)
    //toplam = 10 , i=4 (i 1 artır toplamla topla toplama yaz)
    i++;
}
document.write("While döngüsünde 1 den 10 a kadar olan sayıların toplamı : "+toplam)

document.write("<hr>")