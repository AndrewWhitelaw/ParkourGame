xspeed = 0;   // x-axis movement
yspeed = 0;  //  y-axis movement
moveSpeed = 2;
jumpSpeed = -5;
grav = 0.25;
doubleJump = false;
flashTimer = 0;
flashCount = 0;

//Sprite animations
sprite[RIGHT] = sprPlayerRight; //Array for animations
//sprite[JUMP] = sprPlayerUp;
sprite[LEFT] = sprPlayerLeft;
sprite[IDLE] = sprPlayer;
sprite[DASH] = sprPlayerDash; 
face = IDLE;