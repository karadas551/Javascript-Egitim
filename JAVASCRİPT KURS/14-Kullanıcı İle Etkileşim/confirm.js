function goTo(page,url){
    if(confirm("Onaylıyor Musunuz ?")){
        setTimeout(function(){
            window.location.href = url;
        }, 1000)
    }else{
        alert("Sayfada Kalındı.")
    }
}