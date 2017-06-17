document.addEventListener('keyup',keyUp,false);
function keyUp(event){
  if(event.key == "ArrowUp"){
    console.log("Up Arrow Released");
  }else if(event.key == " "){
    console.log("Spacebar Released");
  }else if(event.key == "s"){
    console.log("Key 's' Released");
  }else{
    console.log(event.key + " Released");
  }
}

