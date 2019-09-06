extends Node

var Score = 0
var Vidas = 3

func moedapega():
	Score+=10
func morreu():
	Vidas-=1
	
#if Vidas = 0:
#Global.goto_scene("res://Scenes/Gameover.tscn")
