/*
Örnek 1 den 100 e kadar olan sayıları tek çift durumunu bulalım!

tek-çift olup olmadığını bulabilmek için sayıyı 2 ye böleceğiz, bölümünden kalan 0 ise sayı çiftdir. Eğer değilse sayı tektir.

*/

for(var i=0; i<=100; i++){
    if(i == 0){
        console.log(i+" Çift Sayıdır")
    }else if(i%2 == 0){
        console.log(i+" Çift Sayıdır")
    }else{
        console.log(i+"Tek Sayıdır.")
    }
}