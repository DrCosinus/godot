extends Node2D

var my_var := 1
const MY_VAR_NAME := nameof(my_var)
var MY_VAR_TYPE := typeof(my_var) # why typeof do not produce a constant ??

func _ready() -> void:
	print("Test project running on ", Engine.get_version_info().string)
	print(MY_VAR_NAME, " ", nameof(Engine.get_version_info), " ", nameof(_ready))
	print(typeof(MY_VAR_NAME) == TYPE_STRING_NAME)
	var f = func(): pass # f is unused even if we use nameof the next line
	print(nameof(f))
