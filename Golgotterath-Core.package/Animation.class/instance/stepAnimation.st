stepping and presenter
stepAnimation
	| aFrame directionFrames |	
	directionFrames := frames at: frame.
	aFrame := directionFrames at: direction.	
	currentFrame := aFrame .
	frame := frame + 1. 	
	frame > frames size
		ifFalse: [ ^ false ].
	frame := 1.
	^ true.  