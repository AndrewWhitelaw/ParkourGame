rightKey = keyboard_check(ord("D")); 
leftKey = keyboard_check(ord("A"));
jumpKey = keyboard_check_pressed(vk_space);

xspeed = (rightKey - leftKey) * moveSpeed;
yspeed += grav;
if(jumpKey && place_meeting(x, y+1, objGround))
{
    yspeed = jumpSpeed;
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

x += xspeed;
y += yspeed;