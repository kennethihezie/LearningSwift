//Arrays
var fruitArrays = ["orange", "mango", "apple"]
print(fruitArrays)
fruitArrays[1] = "grape"
print(fruitArrays)
//you use the assigment operator to append elements
fruitArrays += ["cashew", "banana"]
print(fruitArrays)
// fruitArrays is now an empty array, but is still of type [String]
fruitArrays = []


//empty array with string type
var emptyArray: [String] = []
//you use the function append to also append elements
emptyArray.append("A")
emptyArray.append("B")
emptyArray.append("C")
emptyArray.append("D")
emptyArray += ["E", "F", "G", "H"]
print(emptyArray)
emptyArray.remove(at: 2)
print(emptyArray)


var numArrays = [1, 3, 6, 7, 4]
numArrays.sort()
print(numArrays)

for i in numArrays {
    print(i)
}

//If you need the integer index of each item as well as 
//its value, use the enumerated() method to iterate over 
//the array instead

for (index, item) in numArrays.enumerated() {
    print("Item \(item) at index \(index)")
}

//SETS

/*
A type must be hashable in order to be stored in a set—that is, 
the type must provide a way to compute a hash value for itself. 
A hash value is an Int value that’s the same for all objects 
that compare equally, such that if a == b, the hash value of 
a is equal to the hash value of b.
*/
//You can create an empty set of a certain type using initializer syntax:
var letters = Set<String>()
letters.insert("A")
letters.insert("B")
print(letters)
letters.remove("A")
print(letters)

//Creating a Set with an Array Literal
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

//DICTIONARY
var myDict: [String:Int] = [:]
myDict["A"] = 1
print(myDict)

//Creating a Dictionary with a Dictionary Literal
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
