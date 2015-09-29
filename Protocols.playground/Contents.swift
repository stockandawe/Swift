//: Playground - noun: a place where people can play

import UIKit

@objc protocol Tuneable {
    var pitch: Double { get }
    func tuneSharp()
    func tuneFlat()
    optional func transpose(hertz: Double)
}

class Guitar: Tuneable {
    @objc var pitch: Double = 440
    @objc func tuneSharp() {
        print("increasing string tension...")
        pitch += 5
    }
    @objc func tuneFlat() {
        print("decreasing string tension...")
        pitch -= 5
    }
    /// optional transpose method only implemented here
    @objc func transpose(hertz: Double) {
        pitch = hertz
    }
}

class Saxophone: Tuneable {
    @objc var pitch: Double = 440
    @objc func tuneSharp() {
        print("pushing mouthpiece in...")
        pitch += 10
    }
    @objc func tuneFlat() {
        print("pushing mouthpiece out...")
        pitch -= 10
    }
}

let guitar = Guitar()
let sax = Saxophone()

let instruments: [Tuneable] = [guitar, sax]

for i in instruments {
    i.tuneSharp()
}


// Since transpose method is optional, use "?" when calling 
// it on the instruments which will not be a valid method for 
// object of Saxophone class.
for i in instruments {
    i.tuneSharp()
    i.transpose?(20)
}
