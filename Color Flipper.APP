<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Color Flipper</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="heading"> Color Flipper
     <span id="color"> #FFFFFF</span>
    </div>
    <div id="wrap">
        <div id="container">
           <button  id="btn">Click me

           </button>
        </div>
    </div>
    <script src="app.js">

    </script>
</body>
</html>
<!--
html,
body{
   margin: 0;
   font-family: 'Apple Chancery', cursive;
}
#heading{
    text-align: left;
    margin-bottom: 0px;
    font-size: 2em;
    margin-top: 5px;
    margin-bottom: 5px;
    margin-left: 15px;
    color:crimson
}
#color{
    float: right;
    margin-right: 15px;
}

#wrap{
    height:90vh;
    width:100vw;
    border-top:3px solid #323232;
    display:flex;
    align-items: center;
    justify-content: center;
}


button{
    border: 1px solid black;
    background-color: rgb(219, 54, 54);
    color:white;
    border-radius: 15px;
    padding: 20px 80px;
    font-size: 28px;
    letter-spacing: 5px;
    cursor:pointer;
}-->

<!--
const btn=document.getElementById("btn");
const colortext=document.getElementById("color");
const wrap=document.getElementById("wrap");
const hex=[0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F'];


btn.addEventListener('click',changeBg)
function changeBg(){
    let hexColor='#'
    for( let i=1;i<=6;i++){
        hexColor +=randHexValue()
    }
   wrap.style.backgroundColor=hexColor
   colortext.innerHTML=hexColor
}
function randHexValue(){
    let randomIndex= Math.floor(Math.random()*16)
    return hex[randomIndex]
}-->