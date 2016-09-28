//: Playground - noun: a place where people can play

import UIKit

var date: NSDate

class TestClass {
    var greeting: String
    
    init (greeting: String) {
        self.greeting = greeting
    }
    
    func printGreeting (){
        print (greeting)
    }
}

class otherClass : TestClass {
    var name: String = "The Other CLass"
    
}

let madeAClass = otherClass(greeting: "hi")
madeAClass.printGreeting()




