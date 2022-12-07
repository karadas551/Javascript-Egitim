var vizenotu = 80;
var finalnotu = 90;

//İşlem : 

var ortalama = (vizenotu*0.4) + (finalnotu*0.6);
document.write("Ortama Değeri : "+ortalama+"<br>"); //86

//Koşul Belirleme

if(ortalama >= 50 && ortalama <= 70 ){
    document.write("C Notu Aldınız.");
}else if(ortalama >= 70 && ortalama <= 90 ){
    document.write("B Notu Aldınız.");
}else if(ortalama >=90 && ortalama <= 100){
    document.write("A Notu Aldınız.");
}
else{
    document.write("Kaldınız.");
}

document.write("<hr>")