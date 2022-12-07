/*
Atama Operatörleri

= => atama işlemi.
+= => topla ve ata.
-= => çıkar ve ata.
*= => çarp ve ata. 
/= => böl ve ata. 
** => üst al ve ata 
%= => mod al ve ata 

    sayi1 += sayi2  =  sayi1 = sayi1 + sayi2 ;
*/
var number1 = 10;
var number2 = 20;

number1 = number2; //number1 = 20; number2 = 20;
document.write("number1 değeri : "+number1+"<br>"+"number2 değer : "+number2+"<br>")

var sayi1 = 3;
var sayi2 = 10;

sayi1 += sayi2 // sayi = sayi1+sayi2; //sayi1=13; sayi2=10;
document.write("sayi1 değeri : "+sayi1+"<br>"+"sayi2 değer : "+sayi2+"<br>")

var a = 2;
var b = 4;

a *= b; //a = 8 , b = 4
document.write("A nın yeni değeri : "+a+"<br>"+"B nin değeri : "+b)