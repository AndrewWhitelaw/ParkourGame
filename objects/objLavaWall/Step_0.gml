if(room = Level5){ 
    moveTimer--;
     if(moveTimer < 0){
         moveTimer = 30; 
         x += moveSpeed;
     }
         
     if(place_meeting(x,y,objPlayer)){
         global.PlayerDied = true;
     }  
} 