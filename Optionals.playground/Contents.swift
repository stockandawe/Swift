//: Playground - noun: a place where people can play

// Summary:
// 1. Optionals are integral part of type-safety
// 2. Complier will catch these
// 3. Unwrap optionals to access
// 4. Use optional-bininding syntax
// 5. Any type can be optional

import UIKit

var name: String? // optional
var job: String! // implicitly unwrapped optional
var city: String

name = "Alex"
job = "iOS Developer"
city = "San Francisco"

if name != nil {
    // This will evaluate to "name is Optional("Alex")"
    print("name is \(name)")
} else {
    print("name is nil")
}

// Use the ! operator to get to the assigned value of the name
if name != nil {
    // This will evaluate to "name is Alex")
    print("name is \(name!)")
} else {
    print("name is nil")
}


if job != nil {
    // This will evaluate to "job is iOS Developer")
    print("job is \(job)")
} else {
    print("job is nil")
}

// You cannot do city != nil in this case.
// You cannot also use the city variable before it has been intialized.
print("city is \(city)")


// Optional-Binding-Syntax
// Combining checking for the nil and the use of the local constant in one step
if let theName = name {
    print("name is \(theName)")
} else {
    print("name is nil")
}

// nil-coalescing-operator
// to check if you wan to use an optional's value or an alternative

let finalName = (name ?? "no name")