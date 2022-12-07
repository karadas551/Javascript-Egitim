/*

do{
    Yapılacak işler
}while(şart)

Örnek: 1 den 10 a kadar olan sayıların toplamını bulalım.
*/

/*
while döngüsünde => önce koşula bakılıp sonra işlem yapılır.
do-while döngüsünde => önce işlem yapılır daha sonra koşula bakılır.
*/

var toplam = 0;
var i = 0;

do {
    toplam += i;
    i++;
}while(i<=4)

document.write("Do-While döngüsünde 1 den 10 a kadar olan sayıların toplamı : "+toplam)

document.write("<hr>")