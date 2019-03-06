Class {
	#name : #TreeTableAdapterSingleColumnMultiSelectionTest,
	#superclass : #AbstractTreeTableAdapterTest,
	#category : #'Spec-BackendTests'
}

{ #category : #running }
TreeTableAdapterSingleColumnMultiSelectionTest >> initializeTestedInstance [ 

	presenter
		addColumn: (StringTableColumn title: 'Value' evaluated: #printString);
		hideColumnHeaders;	
		beMultipleSelection;
		roots: #(1 2 3);
		children: [ :aNumber | { aNumber * 2. aNumber * 3. aNumber * 10 } ].

]