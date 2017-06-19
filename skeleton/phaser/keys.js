function keys(sprite){
  if(typeof sprite.speed === "undefined"){
    var speed = 5;
  }else{
    var speed = sprite.speed;
  }
  // Check key states every frame.
  // Move ONLY one of the left and right key is hold.
  var left = game.input.keyboard.isDown(Phaser.Keyboard.LEFT)
  var right = game.input.keyboard.isDown(Phaser.Keyboard.RIGHT)
  var up = game.input.keyboard.isDown(Phaser.Keyboard.UP)
  var down = game.input.keyboard.isDown(Phaser.Keyboard.DOWN)
  var space = game.input.keyboard.addKey(Phaser.Keyboard.SPACEBAR);

  if (left){
    sprite.x -= speed;
  }
  else if (right){
    sprite.x += speed;
  }

  if (up){
    sprite.y -= speed;
  }
  else if (down){
    sprite.y += speed;
  }

  if (space){

  }
}

