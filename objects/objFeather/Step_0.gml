bobTimer += bobSpeed;
y = startY + sin(bobTimer) * bobHeight;


if (place_meeting(x,y,objPlayer))
{
    global.PlayerHasFeather = true;
    instance_destroy();
}


