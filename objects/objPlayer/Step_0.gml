if(keyboard_check_pressed(ord("R"))){
    game_end();
}

if(room == Win){
    visible = false;
}

rightKey = keyboard_check(ord("D")); 
leftKey = keyboard_check(ord("A"));
jumpKey = keyboard_check_pressed(vk_space);

xspeed = (rightKey - leftKey) * moveSpeed;
yspeed += grav;

if(global.PlayerHasFeather)
    global.PlayerDoubleJump = true;
else {
	global.PlayerDoubleJump = false;
}

if (place_meeting(x,y,objFeather))
{
    global.PlayerHasFeather = true;
}


if(jumpKey && place_meeting(x, y+1, objGround))
{
    yspeed = jumpSpeed;
    doubleJump = true;
}
else if(global.PlayerDoubleJump && jumpKey && doubleJump && !place_meeting(x, y+1, objGround))
{
    yspeed = jumpSpeed;
    doubleJump = false;
}



//Collisions
//x
if(place_meeting(x + xspeed, y, [objGround,objDart]))
{
    var pixelCheck = sign(xspeed);
    while !place_meeting(x + pixelCheck, y, [objGround,objDart])  
    {
        x += pixelCheck;
    }
    
    xspeed = 0;
}

//y
if (place_meeting(x + xspeed, y+yspeed, [objGround,objDart])) 
{
    var pixelCheck = sign(yspeed);
    while !place_meeting(x+xspeed, y+ pixelCheck, [objGround,objDart])  
    {
        y += pixelCheck;
    }
    
    yspeed = 0;
	
}

//level clear
if place_meeting(x,y,objFlag){
    if(room == Level5){
        room_goto(Win);
    }
    else{
        room_goto_next();
    }
}

//Level losing
if place_meeting(x,y,[objLava,objProjectile]){
    global.PlayerDied = true;
}

if (global.PlayerDied)
{
    flashTimer += 1;
    if (flashTimer >= 5) 
    {
        image_alpha = (image_alpha == 1) ? 0.3 : 1;
        flashTimer = 0;
        flashCount += 1;
    }
    
    if (flashCount >= 6) 
    {
        image_alpha = 1;
        flashCount = 0;
        global.PlayerDied = false;
        room_restart();
    }
}

mask_index = sprite[IDLE];
if yspeed == 0
{
    if xspeed > 0{face = RIGHT};
    if xspeed < 0{face = LEFT};    
}
if xspeed > 0 && face == LEFT{
    face = RIGHT;
}
if  xspeed < 0 && face == RIGHT{
    face = LEFT;
}
if xspeed == 0
{
    if yspeed > 0{face = IDLE};
}
if yspeed > 0{
    face = IDLE;
}  
if yspeed == 0 && xspeed == 0 {
    face = IDLE;
}
sprite_index = sprite[face]


x += xspeed;
y += yspeed;

//Animate
if xspeed == 0 && yspeed == 0{
    image_index = 0;
}

//depth
depth = -bbox_bottom;