/*
switch - case yapısı

switch(value){
    case 1: 
        yapılacak işler
        break;
    case 2:
        yapılacak işler
        break;
    default:
        break;
}
 
*/

var date = new Date();
//Javascript tarih ve zaman bilgisini almak için data nesnesi kullanılır. 
document.write("Bugün : "+date.getDay()+"<br>");
// Pazar : 0 , Pazartesi : 1 Salı : 2 ... Cumartesi : 6

var deger = date.getDay(); //6
switch(deger){
    case 0:
        day = "Pazar";
        break;
    case 1:
        day = "Pazartesi";
        break;
    case 2:
        day = "Salı";
        break;
    case 3:
        day = "Çarşamba";
        break;
    case 4:
        day = "Perşembe";
        break;
    case 5:
        day = "Cuma";
        break;
    case 6:
        day = "Cumartesi";
        break;
}

document.write("Bugün Günlerden : "+day+"<br>");
