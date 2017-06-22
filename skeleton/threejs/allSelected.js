//for all selected items
function allSelected(){
  CLICKGROUP.forEach(function(i){
    if(i != null){
      i.rotation.x+=.1;
    }
  });
}
