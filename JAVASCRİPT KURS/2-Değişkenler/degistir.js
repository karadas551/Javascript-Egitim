//Kullanıcıdan değer almak için => prompt() komutu kullanılır. 

var sayi1 = prompt("Birinci sayıyı giriniz :");
var sayi2 = prompt("İkinci sayıyı giriniz :");

document.write("Birinci sayının değeri :"+sayi1+"<br>");
document.write("İkinci sayının değeri :"+sayi2+"<br>");

var temp = "0";
temp = sayi1;
sayi1 = sayi2;
sayi2 = temp;

document.write("Birinci sayının değeri :"+sayi1+"<br>");
document.write("İkinci sayının değeri :"+sayi2+"<br>");