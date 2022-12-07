/*
Aritmetik Operatörler : 
    + => toplam
    - => cikarma
    * => carpim
    / => bolum 
    % => mod alma
    ++ => arttırma
    -- => azaltma
*/

var sayi1 = 20;
var sayi2 = 10; 

var toplam = sayi1 + sayi2;
var cikarma = sayi1 - sayi2;
var carpim = sayi1 * sayi2;
var bolum = sayi1 / sayi2;

document.write("Toplam Değeri : "+toplam+"<br>")
document.write("Çıkarma Değeri : "+cikarma+"<br>")
document.write("Çarpma Değeri : "+carpim+"<br>")
document.write("Bölme Değeri : "+bolum+"<br>")
sayi1++;
document.write("Sayi1 yeni değeri : "+sayi1+"<br>") //21
sayi2--;
document.write("Sayi2 yeni değeri : "+sayi2+"<br>") //9

var modu = sayi1 % sayi2; //sayi1 in sayi2 ile bölümünden kalanı bulacağız.
document.write("Mod Sonucu : "+modu)

document.write("<hr>")