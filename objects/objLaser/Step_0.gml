laserTimer--;
if(laserTimer < 0){
    laserTimer = 120; 
    image_alpha = 1;
}
if(laserTimer < 60) image_alpha = 0;
    
if(laserTimer >= 60 && place_meeting(x,y,objPlayer)){
    room_restart() 
    
}