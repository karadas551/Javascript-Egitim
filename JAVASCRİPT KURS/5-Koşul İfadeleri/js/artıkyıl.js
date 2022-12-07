/*
400`ün katı olan yıllar artık yıllardır.
Bunun dışında 4`ün katı olan yıllar içerisinde yalnız 
100`ün katı olmayan yıllar artık yıl sayılır. 

2004, 1996, 1992 artık yıl sayılır.
*/

var year = prompt("Yıl Değerini Giriniz :");

if((year%400==0) || ((year%4==0) && (year%100!==0))){
    document.write(year+" Artık Yıldır.")
}else{
    document.write(year+" Artık yıl değildir.")
}