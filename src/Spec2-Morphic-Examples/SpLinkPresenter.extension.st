Extension { #name : #SpLinkPresenter }

{ #category : #'*Spec2-Morphic-Examples' }
SpLinkPresenter class >> example [

	<sampleInstance>
	| example |
	example := self new
		           url: 'https://pharo.org';
		           label: 'Pharo website';
		           extent: 200 @ 20;
		           open;
		           yourself.

	example withWindowDo: [ :w | w title: 'Link presenter' ].

	^ example
]
