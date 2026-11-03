extends Node2D

var my_var := 1
const MY_VAR_NAME := nameof(my_var)

func _ready() -> void:
	print("Test project running on ", Engine.get_version_info().string)
	print(MY_VAR_NAME, " ", nameof(Engine.get_version_info), " ", nameof(_ready))
	print(typeof(MY_VAR_NAME) == TYPE_STRING_NAME)
