extends NinePatchRect

var self_opened = false
@export var Button1:Button
@export var Button2:Button
@export var Button3:Button
@export var grid:GridContainer
@export var color1:ColorRect
@export var color2:ColorRect
@export var color3:ColorRect

@export var Background_color:ColorRect

func _input(event):
	if event.is_action_pressed("ui_accept"):
		toggle_menu()
		
func toggle_menu():
	self_opened = !self_opened
	if self_opened:
		self.visible = true
	else:
		self.visible = false


func _on_check_button_1_pressed() -> void:
	handleButtonPress("1")
	pass # Replace with function body.


func _on_check_button_2_pressed() -> void:
	handleButtonPress("2")
	pass # Replace with function body.


func _on_check_button_3_pressed() -> void:
	handleButtonPress("3")
	pass # Replace with function body.

func handleButtonPress(button):
	var c1 = color1.color
	var c2 = color2.color
	var c3 = color3.color
	
	if button == "1":
		Background_color.color = c1
		Button2.set_pressed_no_signal(false)
		Button3.set_pressed_no_signal(false)
		
	if button == "2":
		Background_color.color = c2
		Button2.set_pressed_no_signal(false)
		Button3.set_pressed_no_signal(false)
		
	if button == "3":
		Background_color.color = c3
		Button2.set_pressed_no_signal(false)
		Button3.set_pressed_no_signal(false)	
