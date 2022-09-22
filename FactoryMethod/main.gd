extends Node2D


func _input(event):
	if event.is_action_pressed("ui_left"):
		self.add_child($PowerUpsFactory.create('speed'))
	
	if event.is_action_pressed("ui_right"):
		self.add_child($PowerUpsFactory.create('strength'))
	
	if event.is_action_pressed("ui_up"):
		self.add_child($PowerUpsFactory.create('agility'))
			
	if event.is_action_pressed("ui_down"):
		self.add_child($PowerUpsFactory.create('range'))	
