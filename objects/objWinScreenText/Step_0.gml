if (room == Win){ 
    layer_set_visible(layerName, true);
}
else{
    layer_set_visible(layerName, false);
}

if(keyboard_check_pressed(ord("R"))){
    game_end();
}
