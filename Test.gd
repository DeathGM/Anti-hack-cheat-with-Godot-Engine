extends Node2D


var money = 10/2
var compare_money = 0
var display_money = 0


func _process(delta):
	$money.text = "Money: " + str(display_money)

	if compare_money * 2 != display_money:
		$AcceptDialog.show()
		yield(get_tree().create_timer(2),"timeout")
		get_tree().quit()
func _on_Add_pressed():
	money += 10
	compare_money = money
	display_money = money * 2



func _on_AcceptDialog_confirmed():
	get_tree().quit()

