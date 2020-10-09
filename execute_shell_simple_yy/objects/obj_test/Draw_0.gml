draw_set_font(fnt_test);
draw_set_color(c_white);
draw_text(5, 5, @'Press 1 to open Notepad
Press 2 to open web browser');
if (keyboard_check_pressed(ord("1"))) {
	var path = game_save_id + "/hi.txt";
	var f = file_text_open_write(path);
	if (f < 0) exit;
	file_text_write_string(f, "Hi! " + date_datetime_string(date_current_datetime()));
	file_text_close(f);
	//
	var windir = environment_get_variable("WINDIR");
	execute_shell_simple(windir + "\\Notepad.exe", path);
}
if (keyboard_check_pressed(ord("2"))) {
	var path = game_save_id + "/shortcut.url";
	var f = file_text_open_write(path);
	if (f < 0) exit;
	file_text_write_string(f, @'[{000214A0-0000-0000-C000-000000000046}]
Prop3=19,11
[InternetShortcut]
IDList=
URL=https://yoyogames.com');
	file_text_close(f);
	execute_shell_simple(path);
}