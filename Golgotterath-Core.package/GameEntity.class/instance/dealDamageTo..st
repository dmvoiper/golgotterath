accessing
dealDamageTo: entity
	| damage |
	damage := 1.
	self weapon ifNotNil: [ damage := weapon getRandomDamage ].
	entity hp: entity hp - damage.
	entity hp < 1
		ifTrue: [ self exp: self exp + (entity abilities at: 'exp').
			Logger	log: '*** Experience is now: ';log: self exp;cr.
			entity die ]
		ifFalse: [ Logger log: entity;	log: ' took ';	log: damage;log: ' in damage';	cr.
			entity hurt ]