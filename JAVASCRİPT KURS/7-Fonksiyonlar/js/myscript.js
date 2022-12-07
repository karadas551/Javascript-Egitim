//Parametresiz Fonksiyon
function yaz(){
    document.write("Merhaba <br>");
}

//Parametreli Fonksiyon 
function topla(number1,number2){
    var result = number1+number2;
    document.write("Sonuç "+result+"<br>");
}

//Parametreli ve geriye değer dönen fonksiyon 
function carp(number1,number2){
    var result = number1 * number2;
    return result;
}

/*
Recursive (Özyinelemeli) Fonksiyon.
=>kendi kendini çağıran fonksiyonlardır. 

Örnek : Faktöriyel hesabı yapan uygulama geliştireceğiz.
*/

function hesapla(sayi){
    deger = 1;
    for (var i=1; i<=sayi;i++){
        deger = deger * i; // 1 = 1*1; 2=1*2; 6=2*3
    }
    document.write(sayi+" ifadesinin faktöriyeli : "+deger+"<br>");
}

function hesap (sayi){
    if(sayi == 0){
        return 1;
    }else{
        return (sayi * hesap(sayi-1)) //3*2*1*1 = 6
    }
}