document.addEventListener('keydown',keyDown,false);
function keyDown(event){
  if(event.key == "ArrowUp"){
    console.log("Up Arrow");
  }else if(event.key == " "){
    console.log("Spacebar");
  }else if(event.key == "s"){
    console.log("Key 's'");
  }else{
    console.log(event.key);
  }
}
