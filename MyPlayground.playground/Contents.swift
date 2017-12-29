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

// 循环累加 0 1 2 3
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

// 循环累加 0 1 2 3 4 5
var total2 = 0
for i in 0...5 {
    total2 += i
}
print(total2)

// 方法的定义，以及参数的传递
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)"
}
greet(person: "Xiaoming", day: "3")

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)"
}
greet("Xiaohong", on: "4")

func greet(_ p: String, _ d: String) -> String {
    return "Hell0 \(p), today is \(d)"
}
greet("Xiao", "5")

// 定义一个函数，查找最大值，最小值，以及总和，并将这三个结果放到一个数组中返回
func caculatesStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if score > max {
            max = score
        }else if (score < min) {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
// 调用函数，传递一个数组
let statistics = caculatesStatistics(scores: [10, 2, 3, 24, 5, 6, 17, 8])
// 打印总和
print(statistics.sum)
// 打印返回结果元祖中第二个元素的值
print(statistics.2)

// 函数嵌套，里层函数可以使用外层的变量
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

// 定义一个函数，addOne 返回值为一个Int类型
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

// 将里层函数的返回值作为外层函数的参数使用(一个函数返回另一个函数作为它的返回值)
func myName() -> ((Int) -> (String)) {
    func name(d: Int) -> String {
        return "num is \(d + 4)"
    }
    return name
}
var my = myName()
my(1)

// 定义一个函数，第一个参数为一个数组，第二个为一个另一个函数的返回值
func hasAntMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAntMatches(list: numbers, condition: lessThanTen)

// 定义一个函数，返回一个字符串
// 定义一个函数，其中一个参数需要传入一个字符串(传入上面定义的一个函数，因为它返回的恰好是一个字符串)
func getString(listStrs: [String], str: (String)) -> String {
    var result = ""
    for item in listStrs {
        result += "\(item) "
    }
    return result + "\(str)"
}

func returnStr(str: String) -> String {
    return "Hello \(str)"
}
let lists = ["a", "b", "c"]
let resultString = getString(listStrs: lists, str: returnStr(str: "world"))
print("----- > \(resultString)")


numbers.map({(number: Int) -> Int in
    let result = 3 * number
    return result
})

numbers.map({(num: Int) -> Int in return num})

let mappedNumbers = numbers.map({number in 3 * number})
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 > $1}
print(sortedNumbers)












































