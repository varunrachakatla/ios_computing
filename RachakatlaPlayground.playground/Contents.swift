import UIKit

var greeting = "Hello, playground"
print("Hello, World!");
var pl = "Swift";
print("My favorite programming language is \(pl)");



print("Hello!",10,17.6)

var age: Int = 26

print("you are \(age) years old and in another \(age) years, you will be \(age*2) 😆")


print("""
Hello
World!
Swift is Awesome
""")

let MyString : String = "Hello World"
print(MyString, "😇")


print("Welcome to Swift Programming")
print("Fall 2021")
print("*****************")
print("Welcome to Swift Programming", terminator: "-")
print("Fall 2021")


print ("The list of numbers are ")
print(1,2,3,4,5,6)
print("The new pattern is")
print(1,2,3,4,5,6,separator: "-")



var mobileBRand = "Apple";

mobileBRand = "Samsung"

print(mobileBRand)


let pi = 3.14

print(pi)

var ageNew: Int = 23

ageNew = ageNew*2

print(age)


var aweMessage = "This is Superb!"

print(aweMessage)

print("aweMessage")

var course1 = "IOS"
var course2 = "JAVA"

print(course1,course2)

print(course1,"-",course2)


print(10,20,30)

print(12.5,15.5)


var httpError = (errorCode: 404, errorMessage: "Page Not Found")

print(httpError)
print(httpError.errorCode,terminator: ": ")
print(httpError.errorMessage)


var name = ("John", "Smith")
var fName = name.0
var lName = name.1

print(fName,terminator: ",")
print(lName)


var origin = (x:0,y:0)
var point = origin

print(point)


let city = (name: "Maryville", population: 11000)

let (cityName, cityPopulation) = (city.0,city.1)

print(cityName)

print(cityPopulation)

let gorceries = ("bread","onions")

print(gorceries.0)
print(gorceries.1)

print(type(of: gorceries))

var fname = "Joe"
var lname = "Root"

(fname,lname) = (lname,fname)

print("First Name is \(fname) and Last Name is \(lname)")

var cricketKit = ("handGloves","helmet",("bat","ball"))

print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2.0)
print(cricketKit.2.1)
