function clickObj(s,x,y){
  if(typeof s === "undefined"){s = "tux"}
  if(typeof x === "undefined"){x = 200}
  if(typeof y === "undefined"){y = 200}

  snd = game.add.audio('1');
  var o = game.add.sprite(200, 200, s);
  o.anchor.setTo(0.5, 0.5);
  o.inputEnabled = true;
  o.events.onInputDown.add( function(){
    snd.play();
    game.add.tween( o ).to( { alpha: [.1,1] }, 1000, "Linear", true);
  }, this);

  return o;
}

