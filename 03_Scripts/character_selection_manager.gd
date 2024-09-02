extends Node

var player_one
var p1_script = preload("res://03_Scripts/player_one.gd")

var player_two
var p2_scripts = preload("res://03_Scripts/player_two.gd")

var selectableCharacters = {
	"Knifefighter" : preload("res://02_Scenes/Fighters/knifefighter.tscn"),
	"Gunfighter" : preload("res://02_Scenes/Fighters/gunfighter.tscn"),
}
