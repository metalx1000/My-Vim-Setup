function keys(obj,speed){
  if(typeof speed === "undefined"){speed = 5}
  // Check key states every frame.
  // Move ONLY one of the left and right key is hold.
  var left = game.input.keyboard.isDown(Phaser.Keyboard.LEFT)
  var right = game.input.keyboard.isDown(Phaser.Keyboard.RIGHT)
  var up = game.input.keyboard.isDown(Phaser.Keyboard.UP)
  var down = game.input.keyboard.isDown(Phaser.Keyboard.DOWN)
  var space = game.input.keyboard.addKey(Phaser.Keyboard.SPACEBAR);

  if (left){
    obj.x -= speed;
  }
  else if (right){
    obj.x += speed;
  }

  if (up){
    obj.y -= speed;
  }
  else if (down){
    obj.y += speed;
  }

  if (space){

  }
}

