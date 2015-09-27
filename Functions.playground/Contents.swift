//: Playground - noun: a place where people can play

import UIKit

func say(phrase: String) {
    println(phrase)
}

say ("Hello there")

func say(phrase: String, times: Int) {
    for i in 1...times {
        println(phrase)
    }
}

say("Hey there", 10)

// Force callers to provide argument names when calling functions

func say(#phrase: String, #times: Int) {
    for i in 1...times {
        println(phrase)
    }
}

say(phrase: "Hola Amigo", times: 5)

// Use different external and internal names for function arguments

func sayArgNames(phrase str: String, times n: Int) {
    for i in 1...n {
        println(str)
    }
}

sayArgNames(phrase: "Hola Hey", times: 5)


