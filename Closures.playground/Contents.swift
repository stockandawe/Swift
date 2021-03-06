//: Playground - noun: a place where people can play

import UIKit

let names = ["AAA", "BB", "CCCCCCC", "DDDDD", "EEEEE"]

let filtered = names.filter() { $0.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) < 3 }

print(filtered)

func isShortName(name: String) -> Bool {
    return name.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) < 4
}

print(names.filter(isShortName))

func nameWithMaxLenght(max: Int = 3) -> (String) -> Bool {
    return { (name: String) in
        return name.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) < max
    }
}

print(names.filter(nameWithMaxLenght(max: 4)))

// Uses the default value of max = 3
print(names.filter(nameWithMaxLenght()))