initialization
initialize 
	| img |
	super initialize.
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 32 spritesPerRow: 10 offset: 32.
	tiles := Dictionary new.
	tiles at: 'short_sword' put: (spriteImages at: 2).
	tiles at: 'dagger' put: (spriteImages at: 31).
	tiles at: 'rapier' put: (spriteImages at: 51).
	tiles at: 'long_sword' put: (spriteImages at: 22).
	tiles at: 'bastard_sword' put: (spriteImages at: 32).
	tiles at: 'mace' put: (spriteImages at: 3).
	tiles at: 'axe' put: (spriteImages at: 54).
	tiles at: 'flail' put: (spriteImages at: 23)