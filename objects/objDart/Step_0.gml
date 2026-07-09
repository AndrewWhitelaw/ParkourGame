if (floor(image_index) == 3 && !hasFired)
{
    var _dart = instance_create_layer(x, y, layer, objProjectile);
    _dart.hspeed = dartSpeed * -1;
    hasFired = true;
}

if (floor(image_index) != 3)
{
    hasFired = false;
}