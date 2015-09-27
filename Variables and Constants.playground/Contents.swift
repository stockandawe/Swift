//: Playground - noun: a place where people can play

import UIKit

let cardsInDeck = 52
var players = 5

// Since players is defined as a var, it is mutable. 
players = 4

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

let personOne = Person(firstName: "Foo", lastName: "Bar")
var personTwo = Person(firstName: "Foo", lastName: "Bar")

personOne.firstName = "Adam"
personTwo.firstName = "Bob"

// Arrays

var mutableArray = ["one", "two", "three"]
let immutableArray = ["uno", "dos", "tres"]

mutableArray.append("four")

// Cannot append an element to the immutable structure
// immutableArray.append("quatro")




