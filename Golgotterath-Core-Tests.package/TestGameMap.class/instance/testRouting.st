tests
testRouting
	| map entity1 entity2 graph path | 
	map := SetupTestGameMap getGameMap .
	entity1 := GameEntity new: 'malelight'.
	map addEntity: entity1 at: 0@0.
	entity2 := GameEntity new: 'skeleton'.
	map addEntity: entity2 at: 0@(-2).
	graph := map createDijkstraGraphAt: entity1 boardPosition radius: 2.
	path := map findPathInGraph: graph 
		from: (entity1 boardPosition) 
		to: (entity2 boardPosition) .
	"Transcript show: 'path size is ',path size asString;cr."
	self assert: path isNotEmpty .