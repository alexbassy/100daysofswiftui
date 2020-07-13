import UIKit

var str = "Hello, playground"

str = "Goodbye"

var num = 200_000

num * 1893


var longString = """
    This spans
    Multiple lines
"""

var pi = 3.1415926

var ccmf = 2 * pi * 100

var amazing = false

str = "The circumference of the circle is \(ccmf)"

let taylor = "swift"

print(taylor)

struct Album {
    var name: String
    var year: Int
}

var alb = Album(name: "Chromatica", year: 2020)

print("\(alb.name) was released in \(alb.year)")

let str1 = "one"
let int2 = 2

// arrays
var arr: [Any] = [str1, int2]

var arr2 = [str1, "another string"]

arr[1]

// sets
let albums = Set(["Fame", "Fame Monster", "Born this way", "Artpop", "Joanne", "Artpop", "Chromatica"])

albums.capacity
albums.count
albums.contains("Fame")

// tuples
var dimensions = (iphone: [340, 839], ipad: [768, 1024])

dimensions.ipad == dimensions.1

dimensions.iphone

// dictionaries
// quantities are grams
var ingredients = [
    "avocado": 200,
    "onion": 50,
    "garlic": 20,
    "olive oil": 10,
]

ingredients.keys

for (name, quantity) in ingredients {
    print("We need \(quantity) grams of \(name)!")
}

type(of: ingredients)

// dictionary default value
"We need \(ingredients["tomatoes", default: 100]) grams of tomatoes)"

// copy keys into another dictionary
let gramsInOunce = 28.35
var ingredientsImperial = [String: Double]()
// could also be written as `Dictionary<String, Double>()`

for (name, quantity) in ingredients {
    ingredientsImperial[name] = round(Double(quantity) / gramsInOunce)
}

ingredientsImperial

// enums
enum GameStage {
    case pre
    case starting
    case active
    case ending
    case review
    case finished
}

var currentGameState = GameStage.pre

currentGameState = .finished

currentGameState

// enum with associated value
enum GameStageNext {
    case pre
    case start(inProgress: Bool)
    case finished
}

var nextGameStage = GameStageNext.pre

nextGameStage = .start(inProgress: false)

"Waiting..."

nextGameStage = .start(inProgress: true)

func logGameProgress () -> String {
    switch nextGameStage {
    case .pre:
         return "Game not started"
    case .start(let bla):
        return bla ? "Game in progress" : "Game about to start"
    case .finished:
        return "Game finished"
    }
}

print(logGameProgress())
nextGameStage = .finished
print(logGameProgress())
