extends MarginContainer

@export var menu_screen: VBoxContainer
@export var open_menu_screen: VBoxContainer
@export var open_help_screen: MarginContainer
@export var open_setting_popup: MarginContainer

func toggle_visibility(object):
	object.visible = not object.visible

func _on_toggle_menu_button_pressed() -> void:
	toggle_visibility(menu_screen)
	toggle_visibility(open_menu_screen)


func _on_exit_button_pressed() -> void:
	open_help_screen.visible = false


func _on_help_btn_pressed() -> void:
	open_help_screen.visible = true


func _on_exit_setting_button_pressed() -> void:
	open_setting_popup.visible = false


func _on_settings_btn_pressed() -> void:
	open_setting_popup.visible = true
