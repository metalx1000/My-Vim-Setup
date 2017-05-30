function mouseFollow(sprite,vel) {
  if(typeof vel === "undefined"){
    vel = 400;
  }
  //  400 is the speed it will move towards the mouse
  game.physics.arcade.moveToPointer(sprite, vel);

  //  if it's overlapping the mouse, don't move any more
  if (Phaser.Rectangle.contains(sprite.body, game.input.x, game.input.y)){
    sprite.body.velocity.setTo(0, 0);
  }

}
