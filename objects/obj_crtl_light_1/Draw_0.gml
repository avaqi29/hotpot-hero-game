var aaa, bbb, i;
aaa=player.myradius;//Radius in pixel
bbb=50//Precision. The higher the number, the more circles will be drawn(inside the radius) to make the gradient more fluid.

surface_set_target(global.light)/*With this function you set all further drawing to
                                the target surface rather than the screen and in this
                                way you can tell GameMaker:Studio to only draw
                                specific things to the specified surface.*/

draw_clear_alpha(c_black,0.85)//That line make the screen black with an alpha at 0.85
draw_set_blend_mode(bm_subtract) //We're starting to substract here

draw_set_alpha(1/bbb)// The alpha value of 1 i simply divide by the number of circles.

for (i=0; i<=bbb; i+=1)//Now we're looping through all our circles. From the larger to the smaller.
{
draw_circle(player.x, player.y, (aaa-(aaa/bbb*i)), false)
}


for (i=0; i<=bbb; i+=1)//Now we're looping through all our circles. From the larger to the smaller.
{
draw_circle(obj_cat.x, obj_cat.y, (aaa-(aaa/bbb*i)), false)
}

draw_set_alpha(1)//Important line to reset the alpha back to 1.
draw_set_blend_mode(bm_normal)//Important thing here! Stop to substract.
surface_reset_target()//With this function you reset all further drawing from the target surface back to the screen.




if surface_exists(global.light)//A safe way to avoid errors. If it exist, draw it. If not create it.
{
draw_surface(global.light,0,0)
}

else
{
global.light=surface_create(room_width,room_height)
}
/*If you use views, check code on room3.

/* */
/*  */