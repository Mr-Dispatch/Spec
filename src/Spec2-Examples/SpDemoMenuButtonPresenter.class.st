Class {
	#name : #SpDemoMenuButtonPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'text',
		'menu',
		'button'
	],
	#category : #'Spec2-Examples-Demo-Buttons'
}

{ #category : #layout }
SpDemoMenuButtonPresenter >> defaultLayout [

	^ SpBoxLayout newTopToBottom
		  add: (SpBoxLayout newLeftToRight
				   add: button;
				   add: menu expand: false;
				   yourself)
		  expand: false;
		  add: text;
		  yourself
]

{ #category : #initialization }
SpDemoMenuButtonPresenter >> initializePresenters [
	<script: 'self new open'>

	(button := self newButton)
		label: 'Choice';
		action: [ text text: text text, button label, String cr ].
			
	menu := self newMenuButton
		help: 'An example menu.';
		menu: [ self newExampleMenu ];
		yourself.


	text := self newText
]

{ #category : #initialization }
SpDemoMenuButtonPresenter >> newExampleMenu [
	| loremIpsumWorlds |
	
	loremIpsumWorlds := String loremIpsum substrings.
	^ SpMenuPresenter new
		addGroup: [ :group | 
			1 to: 10 atRandom do: [ :index |
				group addItem: [ :item |
					item 
						name: ('{1}: {2}' format: { index. loremIpsumWorlds atRandom }); 
						action: [ button label: item name ] ] ] ];
		yourself
]
