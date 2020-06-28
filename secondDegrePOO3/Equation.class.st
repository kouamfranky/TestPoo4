Class {
	#name : #Equation,
	#superclass : #Object,
	#instVars : [
		'a',
		'b',
		'c'
	],
	#category : #secondDegrePOO3
}

{ #category : #getters }
Equation >> a [
	^ a
]

{ #category : #setters }
Equation >> a: anObject [
	a := anObject
]

{ #category : #getters }
Equation >> b [
	^ b
]

{ #category : #setters }
Equation >> b: anObject [
	b := anObject
]

{ #category : #getters }
Equation >> c [
	^ c
]

{ #category : #setters }
Equation >> c: anObject [
	c := anObject
]

{ #category : #operation }
Equation >> delta [ 
"Determinons le discriminant"
|delta|
	delta := (self b squared ) - (4 * (self a) * (self b)).
	^delta 
]

{ #category : #getters }
Equation >> printString [ 
^ self a asString, 'X^2 + ', self b asString, 'X + ',  self c asString.
]

{ #category : #operation }
Equation >> solution [
	|x1 x2|
	(self delta > 0)
	ifTrue: [ 
		x1:= (self b negated  + ((self delta) sqrt)) / 2 * (self a).
		x2:= (self b negated  - ((self delta) sqrt)) / 2 * (self a).
		^ OrderedCollection with: x1 with: x2 
		].
	"Cas de solution double"
		(self delta = 0)
			ifTrue: [ 
				 x1:= self b negated / 2 * (self a).
		^ OrderedCollection with: x1
		].
	  (self delta < 0)
			ifTrue: [ 
				^ OrderedCollection new ]
]
