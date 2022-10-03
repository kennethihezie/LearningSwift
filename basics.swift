print("hello world")

//VARIABLES AND CONSTANTS
//let is used to make constants
let myVariable = 42

let myConstant = 32

let implicitInteger = 70

let implicitDouble = 70.0

let explicitDouble: Double = 70

let explicitFloat: Float = 60 

var name = "Collins"

/*
Values are never implicitly converted to another type. 
If you need to convert a value to a different type, 
explicitly make an instance of the desired type.
*/
let label = "The width is: "
let width = 94
let widthLabel = label + String(width)
print(widthLabel)

/*
There’s an even simpler way to include values in strings: 
Write the value in parentheses, and write a backslash (\) 
before the parentheses. For example:
*/
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruits"
print(appleSummary)
print(fruitSummary)

/*
Use three double quotation marks (""") for strings 
that take up multiple lines. Indentation at the start 
of each quoted line is removed, as long as it matches 
the indentation of the closing quotation marks. For example:
*/

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
print(quotation)












