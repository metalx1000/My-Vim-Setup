function createCube(x,y,z){
 if(typeof x === "undefined"){x = 0;}
 if(typeof y === "undefined"){y = 0;}
 if(typeof z === "undefined"){z = 0;}

  var cube = new THREE.Mesh(new THREE.CubeGeometry(200,100,100), new THREE.MeshNormalMaterial());
  cube.position.x = x;
  cube.position.y = y;
  cube.position.z = z;
  cube.rotation.x = 10;
  cube.rotation.z = .5;
  scene.add(cube);
  return cube;
}

