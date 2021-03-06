action
die
	| goscreen |
	Logger log:self;log:' has died! ***************** ';cr.
	 
	gamemap ifNotNil: 
		[	| pos body |
			pos := self boardPosition.
			body := self createDeadEntityitem .			
			gamemap removeEntityAt: pos. 
			gamemap addItem: body at: pos.
			gamemap gameboard playAnimation: 'die' for: self. ].
	player
		ifTrue: [ 			
			gamemap gameboard soundBoard play: 'hurt2'.
			goscreen := GameOverScreen new.
			goscreen position: gamemap gameboard position.
			gamemap gameboard addMorph: goscreen. ]
		ifFalse: [ gamemap gameboard soundBoard play: 'monster2' ]