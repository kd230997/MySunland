extends VBoxContainer
@onready var coinLabel: Label = $Coin
@onready var scoreLabel: Label = $Score

var coins: String = str(84)
var score: String = str(1928)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	update_text()


func update_text():
	coinLabel.text = ("COINS: " + coins)
	scoreLabel.text = ("SCORE: " + score)
