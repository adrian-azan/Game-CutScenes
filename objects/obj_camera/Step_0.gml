/// @description Move Camera

x += (xTo - x) / 5;
y += (yTo - y) / 5;

with (follow)
{
	other.xTo = x;
	other.yTo = y;
}


vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);