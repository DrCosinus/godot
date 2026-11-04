class_name Class extends Node2D

var my_var := 1
const MY_VAR_NAME := nameof(my_var)
var MY_VAR_TYPE := typeof(my_var) # why typeof do not produce a constant ??
enum MyEnum
{
	ENUM_VALUE_1,
	ENUM_VALUE_2
}

func _ready() -> void:
	print("Test project running on ", Engine.get_version_info().string)
	print(MY_VAR_NAME, " ", nameof(Engine.get_version_info), " ", nameof(_ready))
	print(typeof(MY_VAR_NAME) == TYPE_STRING_NAME)
	var f = func(): pass # f is unused even if we use nameof the next line
	print(nameof(f))
	print(nameof(self.my_var))
	print(nameof(get_script))
	print(nameof(Class))
	print(nameof(MyInnerClass))
	print(nameof(MyInnerClass.new().my_class_var))
	print(nameof(MyInnerClass.my_static_var))
	print(nameof(MY_VAR_NAME))
	print(nameof(MyInnerClass.MY_CLASS_VAR_NAME))
	print(nameof(MyEnum))
	print(nameof(MyEnum.ENUM_VALUE_1))
	print(nameof(MyEnum.ENUM_VALUE_2))
	get_tree().quit(0)

class MyInnerClass extends RefCounted:
	static var my_static_var:= 10
	var my_class_var := 5
	const MY_CLASS_VAR_NAME := nameof(my_class_var)
