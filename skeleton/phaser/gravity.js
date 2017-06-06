function gravity(sprite,world,bounce,gravity){
  if(typeof world === "undefined"){world = true;}
  if(typeof bounce === "undefined"){bounce = 0.8}
  if(typeof gravity === "undefined"){gravity = 200}

  //don't forget to start system physics
  game.physics.enable(sprite, Phaser.Physics.ARCADE);
  sprite.body.collideWorldBounds = world;
  sprite.body.bounce.y = bounce;
  sprite.body.gravity.y = gravity;
}