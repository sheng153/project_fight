extends Node
class_name GameGlobals

@export var available_characters = {
	"Fighter": preload("res://scenes/characters/Fighter.tscn")
}

@export var available_arenas = {
	"Arena1": preload("res://scenes/arenas/Arena1.tscn")
}

var selected_characters: Array[String] = ["Fighter"]
var selected_arena: String = "Arena1"

func get_character_scene(name: String) -> PackedScene: 
	return available_characters.get(name, null)

func get_arena_scene(name: String) -> PackedScene:
	return available_arenas.get(name, null)
