"
I'm a default application for the case where no application is defined.
I'm meant to provide backwards compatibility and I SHOULD NOT BE USED REGULARLY.
"
Class {
	#name : #SpNullApplication,
	#superclass : #SpApplication,
	#category : #'Spec2-Core-Base'
}

{ #category : #'class initialization' }
SpNullApplication class >> reset [
	<script>
	
	DefaultApplication ifNotNil: [ 
		DefaultApplication reset ].
	DefaultApplication := nil
]
