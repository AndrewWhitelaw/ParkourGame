var dart = instance_create_layer(x, y, layer, objProjectile);
dart.hspeed += dartSpeed * direction_facing;

alarm[0] = fireRate;