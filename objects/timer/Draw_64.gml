/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_lime)
if(!endscr){
draw_text_transformed(0,0, string(time div 60) +":"+ string(time -(time div 60)* 60),3,3,0)
}
else{
draw_text_transformed(400,300, "Time " + string(time div 60) +":"+ string(time -(time div 60)* 60),3,3,0)
}
