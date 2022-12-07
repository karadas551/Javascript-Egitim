function sifreuret(){
    document.getElementById("captcha").value = Math.floor(Math.random()*100);
}
sifreuret();

function checkCaptcha(){
    var text = document.getElementById("text").value;
    var password = document.getElementById("captcha").value;

    if(text == password){
        alert("Parola Doğru");
    }else{
        alert("Parola Yanlış");
    }
    document.getElementById("text").value ="";
}
