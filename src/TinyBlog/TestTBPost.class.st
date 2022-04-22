Class {
	#name : #TestTBPost,
	#superclass : #TestCase,
	#category : #TinyBlog
}

{ #category : #tests }
TestTBPost >> testInitialize [

| post |
post := TBPost new.
self assert: post category = 'Unclassified'.
self assert: post date equals: Date today.
self assert: post visible equals: false
]

{ #category : #tests }
TestTBPost >> testTitleText [

| post |
post := TBPost title: #TEST text: #Mon_Texte.
self assert: post title equals: #TEST.
self assert: post text equals: #Mon_Texte.
self assert: post category = 'Unclassified'.
self assert: post date equals: Date today.
self assert: post visible equals: false
]

{ #category : #tests }
TestTBPost >> testTitleTextCategory [

| post |
post := TBPost title: #TEST text: #Mon_Texte category: #MA_CAT.
self assert: post title equals: #TEST.
self assert: post text equals: #Mon_Texte.
self assert: post category equals: #MA_CAT.
self assert: post date equals: Date today.
self assert: post visible equals: false
]

{ #category : #tests }
TestTBPost >> testVisible [

| post |
post := TBPost new.
self assert: post visible equals: false.
post beVisible.
self assert: post visible equals: true.
post notVisible.
self assert: post visible equals: false.
]
