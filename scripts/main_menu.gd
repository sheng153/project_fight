extends Control

const BATTLE_SCENE = "res://scenes/main_scenes/CombatScene.tscn"
const OPTIONS_SCENE = "res://scenes/main_scenes/SettingsMenu.tscn"

func _on_play_pressed() -> void:
	print("Play button pressed")
	$Globals.fade_out_and_change_scene(BATTLE_SCENE)

func _on_options_pressed() -> void:
	print("Options button pressed")
	$Globals.fade_out_and_change_scene(OPTIONS_SCENE)

func _on_quit_pressed() -> void:
	print("Quit button pressed")
	get_tree().quit()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("✔ MainMenu.gd _ready() fired")
	$CenterContainer/Panel/VBoxContainer/Play.connect("pressed", _on_play_pressed)
	$CenterContainer/Panel/VBoxContainer/Options.connect("pressed", _on_options_pressed)
	$CenterContainer/Panel/VBoxContainer/Quit.connect("pressed", _on_quit_pressed)
