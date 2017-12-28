//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let label = "The width is "
let width = 94.0
let widthLabel = label + String(width)

let apples = 3.0
let appleSummary = "I have \(apples) apples"
let nameSummarr = "Hello \(apples + width) xiaoming"
print(nameSummarr)

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + width) pieces offruit."
"""
print(quotation)

var shoppingList = ["water", "apple", "color"]
shoppingList[2] = "botter of water"
shoppingList

var occupations = ["Malcolm": "Captain", "Kaylee": "Mechanic"]
occupations["Kaylee"]
occupations["Jayne"] = "Public Relations"
occupations

let emptyArrar = [String]()
let emptyDictionary = [String: Float]()

shoppingList = []
occupations = [:]

shoppingList
occupations

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    }else {
        teamScore -= 1
    }
}
print(individualScores)


var optionalString: String? = "hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "hello"
if let name = optionalName {
    greeting = "hello, \(name)"
}
// 如果num值为nil,则执行else中的逻辑
var num: Int?
if let n = num {
    n
}else {
    print("ni")
}

// 如果nickName为nil,则informalGreeting为Hi John Appleseed
// 如果nickName不为nil（dd），则informalGreeting为Hi dd
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

// 可以匹配任何类型，可匹配的选项可以是多个，或者包含等 。。。
let vegetable = "red pepper"
switch vegetable {
case "cecery":
    print("cecery")
case "cucumber", "watercress":
    print("cucumber,watercress")
case let x where x.hasSuffix("pepper"):
    print("It is a spicy \(x)?")
default:
    print("noting")
}

let intertetingNumbers = [
    "Primes": [1, 2, 43, 4, 5, 26],
    "Fibonacci": [12, 4, 15, 6, 57, 9],
    "Square": [1, 14, 77, 6, 14],
]
intertetingNumbers

var largest = 0
for (kind, numbers) in intertetingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            print("The max num in \(kind)")
        }
    }
}
print(largest)

var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
    print(m)

print(7500/24/365)



























