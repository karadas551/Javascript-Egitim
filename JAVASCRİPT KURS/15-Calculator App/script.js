function display (val){
    document.getElementById("result").value += val;
}

function calculate(){
    var value = document.getElementById("result").value;
    var answer = eval(value);
    document.getElementById("result").value = answer;

    //eval(12/4) = 3
}
function clearResult(){
    document.getElementById("result").value = "";
}