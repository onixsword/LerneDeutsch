global.currentWeather = argument0;
if(argument1 == 1)
{
    if(global.currentWeather == 0)
    {
        repeat(20)
        {
            instance_create(random(__view_get( e__VW.WView, 0 )), random(__view_get( e__VW.HView, 0 )), obj_snowFlake);
        }
    }
}
if(argument1 == destroy)
{
   with (obj_snowFlake) instance_destroy(); 
}
