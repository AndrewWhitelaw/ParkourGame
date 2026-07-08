if (place_meeting(x, y, objGround))
{
    instance_destroy();
}

if (place_meeting(x, y, objPlayer))
{
    room_restart(); 
} 