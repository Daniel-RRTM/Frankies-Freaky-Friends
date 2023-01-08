class_name ZoomingCamera2D
extends Camera2D

# Lower cap for the `_zoom_level`.
export var min_zoom := 0.5
# Upper cap for the `_zoom_level`.
export var max_zoom := 1.0
# Duration of the zoom's tween animation.
export var zoom_duration := 0.5

# The camera's target zoom level.
var _zoom_level := 1.0 setget _set_zoom_level

# We store a reference to the scene's tween node.
onready var tween: Tween = $Tween
onready var buttons: Node2D = $Buttons
# Horrible code following...
onready var button: Button = $Buttons/Button
onready var button2: Button = $Buttons/Button2
onready var button3: Button = $Buttons/Button3
onready var button4: Button = $Buttons/Button4


func _set_position(value: Vector2) -> void:
	tween.interpolate_property(
		self,
		"offset",
		offset,
		value,
		zoom_duration,
		tween.TRANS_SINE,
		tween.EASE_OUT
	)
	tween.start()

func _set_zoom_level(value: float) -> void:
	_zoom_level = value
	tween.interpolate_property(
		self,
		"zoom",
		zoom,
		Vector2(value, value),
		zoom_duration,
		tween.TRANS_SINE,
		tween.EASE_OUT
	)
	tween.start()


func _set_opacity(obj: Object, from: Color, to: Color) -> void:
	tween.interpolate_property(
		obj,
		"modulate",
		from,
		to,
		zoom_duration,
		tween.TRANS_SINE,
		tween.EASE_OUT
	)
	tween.start()



func _unhandled_input(event):
	if event.is_action_pressed("zoom_out"):
		print_debug(event)
		_set_zoom_level(max_zoom)
		_set_position(Vector2(0,0))
		_set_opacity(buttons, buttons.modulate, Color(1,1,1,1))
		button.disabled = false;
		button2.disabled = false;
		button3.disabled = false;
		button4.disabled = false;


func _on_Button_pressed(newPosVector):
	_set_zoom_level(min_zoom)
	_set_position(newPosVector)
	_set_opacity(buttons, buttons.modulate, Color(1,1,1,0))
	print_debug(newPosVector)
	button.disabled = true;
	button2.disabled = true;
	button3.disabled = true;
	button4.disabled = true;

