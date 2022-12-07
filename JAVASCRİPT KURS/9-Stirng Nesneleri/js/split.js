//split => string ifadeyi arreye çevirir.

var text = "Javascript Öğrenmesi Çok Kolay Bir Dildir."
document.write(text+"<br>")

var words = text.split(" ");
document.write(words+"<br>")

document.write(words[0]+"<br>");

for(var i=0;i<words.length;i++){
    document.write(words[i]+"<br>")
}

document.write("<hr>")
