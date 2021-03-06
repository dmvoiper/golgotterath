accessing
calculatePositionFromGameboard: gameboard
	| adjustCentre gw boardOffset wc dx dy rv |
	gw := gameboard width / 2.
 	adjustCentre := GolUtil toISO: gw@0.
 	
	wc := gameboard worldCoords .
	dx := (wc x - boardPosition x) * 64. 
	dy := (wc y - boardPosition y) * 64.
	
	boardOffset := gameboard boardDrawOffset - (GolUtil toISO:(dx@dy)).
	rv := boardOffset + adjustCentre.
	rv := ((rv x) asInteger)@((rv y) asInteger).
	^ rv 