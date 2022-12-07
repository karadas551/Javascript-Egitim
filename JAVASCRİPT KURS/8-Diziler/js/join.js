//join() => Array elemanlarını birleştirerek tek bir string haline getirir.
//istenilen karakter ile birleştirme yapılabilir.

var cars = ["Mercedes", "Bmw", "Toyota", "Ferrari"];

document.write(cars.join()+"<br>");
document.write(cars.join("-")+"<br>");
document.write(cars.join("%")+"<br>");

document.write(cars.toString())