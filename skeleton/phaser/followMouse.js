function followMouse(obj,vel) {
  if(typeof vel === "undefined"){vel = 400;}
  //If you've set physics for this obj already you can comment the next line out
  game.physics.enable(obj, Phaser.Physics.ARCADE);

  //  400 is the speed it will move towards the mouse
  game.physics.arcade.moveToPointer(obj, vel);

  //  if it's overlapping the mouse, don't move any more
  if (Phaser.Rectangle.contains(obj.body, game.input.x, game.input.y)){
    obj.body.velocity.setTo(0, 0);
  }

}
