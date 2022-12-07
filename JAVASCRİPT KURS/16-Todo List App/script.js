var myNodeList = document.getElementsByTagName("LI");
for(var i=0; i<myNodeList.length;i++){
    var span = document.createElement("SPAN");
    var text = document.createTextNode("x");
    span.className = "close";
    span.appendChild(text);
    myNodeList[i].appendChild(span);
}

var close = document.getElementsByClassName("close");
for(var i=0;i<close.length;i++){
    close[i].onclick = function(){
        this.parentElement.style.display = "none";
    }
}

function newElement(){
    var li = document.createElement("li");
    var inputvalue = document.getElementById("myInput").value;
    var txt = document.createTextNode(inputvalue);
    li.appendChild(txt);

    if(inputvalue == ''){
        alert("Lütfen doldurunuz.")
    }else{
        document.getElementById("myList").appendChild(li);
        li.className = "list-group-item";
    }
    document.getElementById("myInput").value = "";

    var span = document.createElement("SPAN");
    var text = document.createTextNode("x");
    span.className = "close";
    span.appendChild(text);
    li.appendChild(span);

    for(var i=0;i<close.length;i++){
        close[i].onclick = function(){
            this.parentElement.style.display = "none";
        }
    }
}