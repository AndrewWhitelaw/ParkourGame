rightKey = keyboard_check(ord("D")); 
leftKey = keyboard_check(ord("A"));
jumpKey = keyboard_check_pressed(vk_space);

xspeed = (rightKey - leftKey) * moveSpeed;
yspeed += grav;

if(jumpKey && place_meeting(x, y+1, objGround))
{
    yspeed = jumpSpeed;
    counter = 1;
}

//Collisions
//x
if(place_meeting(x + xspeed, y, objGround))
{
    var pixelCheck = sign(xspeed);
    while !place_meeting(x + pixelCheck, y, objGround)  
    {
        x += pixelCheck;
    }
    
    xspeed = 0;
}

//y
if (place_meeting(x + xspeed, y+yspeed, objGround)) 
{
    var pixelCheck = sign(yspeed);
    while !place_meeting(x+xspeed, y+ pixelCheck, objGround)  
    {
        y += pixelCheck;
    }
    
    yspeed = 0;
	
}

//level clear
if place_meeting(x,y,objFlag){
    room_goto_next();
}

//Level losing
if place_meeting(x,y,objLava){
    room_restart();
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