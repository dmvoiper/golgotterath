accessing
getRandomDamage 
	| dam damage howmany die |
	damage := 1.	
	dam := attributes at: 'dam'.
	die := ((dam at: 1) asString) asNumber.
	howmany := (dam copyFrom: 3 to: dam size) asNumber.
	Logger log:'Damage from ';log:dam;log:' die = ';log:die;
				log:' howmany = ';log:howmany;cr.		
	howmany timesRepeat: [ damage := damage + (die atRandom) ].
	Logger log:'damage dealt: ';log:damage;cr.			
	^ damage
