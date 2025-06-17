extends Node

@onready var fade_rect: ColorRect = $FadeCanvas/ColorRect

func fade_in(duration: float = 0.5) -> void:
	var tween = fade_rect.create_tween()
	tween.tween_property(fade_rect, "modulate:a", 0.0, duration)
	tween.tween_callback(fade_rect.hide)

func _on_fade_complete(path: String) -> void:
	print("Entering scene " + path)
	get_tree().change_scene_to_file(path)

func fade_out_and_change_scene(path: String, duration: float = 0.5) -> void:
	fade_rect.modulate.a = 0.0
	fade_rect.show()
	
	var tween = fade_rect.create_tween()
	tween.tween_property(fade_rect, "modulate:a", 1.0, duration)
	tween.tween_callback(_on_fade_complete.bind(path))

func _ready() -> void:
	fade_rect.modulate.a = 1.0
	fade_rect.show()
	fade_in()
