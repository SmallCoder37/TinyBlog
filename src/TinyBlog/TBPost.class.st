"
Une classe simple qui définit un Post dans un Blog
"
Class {
	#name : #TBPost,
	#superclass : #Object,
	#instVars : [
		'title',
		'text',
		'date',
		'category',
		'visible'
	],
	#category : #TinyBlog
}

{ #category : #'as yet unclassified' }
TBPost class >> title: aTitle text: aText [
		^ self new
			title: aTitle;
			text: aText;
			yourself
]

{ #category : #'as yet unclassified' }
TBPost class >> title: aTitle text: aText category: aCategory [
	^ (self title: aTitle text: aText)
			category: aCategory;
			yourself
]

{ #category : #'as yet unclassified' }
TBPost class >> unclassifiedTags [

	^ 'Unclassified'
]

{ #category : #accessing }
TBPost >> beVisible [

	self visible: true
]

{ #category : #accessing }
TBPost >> category [

	^ category
]

{ #category : #accessing }
TBPost >> category: anObject [

	category := anObject
]

{ #category : #accessing }
TBPost >> date [

	^ date
]

{ #category : #accessing }
TBPost >> date: aDate [

	date := aDate
]

{ #category : #initialization }
TBPost >> initialize [ 

	super initialize.
	self category: self class unclassifiedTags.
	self date: Date today.
	self notVisible 
]

{ #category : #accessing }
TBPost >> notVisible [

	self visible: false
]

{ #category : #accessing }
TBPost >> text [

	^ text
]

{ #category : #accessing }
TBPost >> text: aString [

	text := aString		
]

{ #category : #accessing }
TBPost >> title [

	^ title
]

{ #category : #accessing }
TBPost >> title: aString [

	title := aString		
]

{ #category : #accessing }
TBPost >> visible [

	^ visible
]

{ #category : #accessing }
TBPost >> visible: aBoolean [

	visible := aBoolean 		
]
