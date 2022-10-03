//By default, functions use their parameter names as labels for their arguments. 
func addNumber(a: Int, b: Int) -> Int {
    return a + b
}
print(addNumber(a: 2, b: 4))

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)"
}
print(greet(person: "Bob", day: "Tuesday"))

// Write a custom argument label before the 
//parameter name, or write _ to use no argument 
//label.
func greetings(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)"
}
print(greetings("John", on: "Wednesday"))

/*
Use a tuple to make a compound value—for 
example, to return multiple values from a 
function. The elements of a tuple can be 
referred to either by name or by number.
*/
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}
print(calculateStatistics(scores: [1, 3, 5, 6, 7]))
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
// Prints "120"
print(statistics.2)
// Prints "120"

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(returnFifteen())

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int{
        return 1 + number
    }

    return addOne
}

let increment = makeIncrementer()
print(increment(7))

//A function can take another function as one of its arguments.

func hasAnyMatches(condition: (Int) -> Bool, list: [Int]) -> Bool {
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
print(hasAnyMatches(condition: lessThanTen, list: numbers))

// You can write a closure without a name by 
// surrounding code with braces ({}). Use in to 
// separate the arguments and return type from 
// the body.
numbers.map({ (number: Int) -> Int in
    let  result = 3 * number
    print(result)
    return result
})

let sortedNumbers = numbers.sorted{ $0 > $1 }
print(sortedNumbers)

//Extension functions
extension Int{
    var simpleDescription: String {
        return "The number \(self)"
    }
}

print(7.simpleDescription)


