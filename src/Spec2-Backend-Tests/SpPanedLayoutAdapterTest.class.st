Class {
	#name : #SpPanedLayoutAdapterTest,
	#superclass : #SpLayoutAdapterTest,
	#category : #'Spec2-Backend-Tests-Layout'
}

{ #category : #testing }
SpPanedLayoutAdapterTest class >> isAbstract [

	^ self == SpPanedLayoutAdapterTest
]

{ #category : #tests }
SpPanedLayoutAdapterTest >> testAdapterElementsAreInExplicitOrder [
	| first second |
	
	layout first: (first := SpButtonPresenter new).
	layout second: (second := SpButtonPresenter new).
	self assert: self adapter children first equals: first adapter widget.
	self assert: self adapter children second equals: second adapter widget.
]

{ #category : #tests }
SpPanedLayoutAdapterTest >> testAddFirstElementAfterOpenAddsToAdapter [

	layout second: SpButtonPresenter new.
	self openInstance.
	
	layout first: SpButtonPresenter new.
	self assert: self adapter children size equals: 2
]

{ #category : #tests }
SpPanedLayoutAdapterTest >> testAddFirstTwiceReplacesChild [
	| first second |

	layout first: (first := SpButtonPresenter new).
	layout first: (second := SpButtonPresenter new).
	self assert: self adapter children first equals: second adapter widget
]

{ #category : #tests }
SpPanedLayoutAdapterTest >> testAddFirstTwiceSetsChildrenSingleTime [
	| first second |
	
	layout first: (first := SpButtonPresenter new).
	layout first: (second := SpButtonPresenter new).
	self assert: self adapter children size equals: 1
]

{ #category : #tests }
SpPanedLayoutAdapterTest >> testAddSecondElementAfterOpenAddsToAdapter [

	layout first: SpButtonPresenter new.
	self openInstance.
	
	layout second: SpButtonPresenter new.
	self assert: self adapter children size equals: 2
]

{ #category : #tests }
SpPanedLayoutAdapterTest >> testAddSecondTwiceReplacesChild [

	| first second |
	layout second: (first := SpButtonPresenter new).
	layout second: (second := SpButtonPresenter new).
	self
		assert: self adapter children first
		equals: second adapter widget
]

{ #category : #tests }
SpPanedLayoutAdapterTest >> testAddSecondTwiceSetsChildrenSingleTime [

	| first second |
	layout second: (first := SpButtonPresenter new).
	layout second: (second := SpButtonPresenter new).
	self assert: self adapter children size equals: 1
]

{ #category : #tests }
SpPanedLayoutAdapterTest >> testLayoutWithFirstElementIsNotEmpty [

	layout first: SpButtonPresenter new.
	self deny: self adapter isEmpty
]

{ #category : #tests }
SpPanedLayoutAdapterTest >> testLayoutWithSecondElementIsNotEmpty [

	layout second: SpButtonPresenter new.
	self deny: self adapter isEmpty
]

{ #category : #tests }
SpPanedLayoutAdapterTest >> testRemoveFirstElementAddedAfterOpenRemovesFromAdapter [

	| element |
	layout first: (element := SpButtonPresenter new).
	self openInstance.

	layout remove: element.
	self assert: self adapter isEmpty
]

{ #category : #tests }
SpPanedLayoutAdapterTest >> testRemoveFirstElementRemovesFromAdapter [

	| element |
	layout first: (element := SpButtonPresenter new).
	layout remove: element.
	self assert: self adapter isEmpty
]

{ #category : #tests }
SpPanedLayoutAdapterTest >> testRemoveSecondElementAddedAfterOpenRemovesFromAdapter [

	| element |
	layout second: (element := SpButtonPresenter new).
	self openInstance.

	layout remove: element.
	self assert: self adapter isEmpty
]

{ #category : #tests }
SpPanedLayoutAdapterTest >> testRemoveSecondElementRemovesFromAdapter [

	| element |
	layout second: (element := SpButtonPresenter new).
	layout remove: element.
	self assert: self adapter isEmpty
]
