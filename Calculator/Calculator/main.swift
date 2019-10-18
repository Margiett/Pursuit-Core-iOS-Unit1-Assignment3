
//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation
print("Welcome to the Fun Calculator! 🤪 ")
sleep(1)
print("pick one A. Calculator  B. HighOrderFunction")
sleep(1)

let pickOne = readLine()?.lowercased() ?? "a"


if pickOne == "a"{
print("Please input an equation that contains ONLY NUMBERS! Thank You! EX. 5 + 5")
    sleep(1)
    print("OR")
    sleep(1)
    print("you can play the Guessing game EXAMPLE: 5 ? 5 guess what operation is the question mark")
var randomOperations: [String] = ["-", "/","+","*"]
var randomOperationsElement = randomOperations.randomElement() ?? ""

var isQuestionMark = false

func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
  switch opString {
  case "+": // A
    return {x, y in x + y } // B
  case "-":
    return {x, y in x - y }
  case "*":
    return {x, y in x * y }
  case "/":
    return {x, y in x / y }
  default:
    return {x, y in x + y }
  }
}
// point of the project is to learn how to use the func
//let mathFunction = mathStuffFactory (opString: array[1])

let userInput = readLine() ?? "5 + 5"
//if userInputs "5 + 5" = "5+5"{
//
//}

var opString = ""

print()
//print(userInput.components(separatedBy: " "))

func takeInInput(input:String) -> Double {
   let userInputAsArray = input.components(separatedBy: " ")
//print(userInputAsArray)
    if userInputAsArray.count == 3 {
            if userInputAsArray[1] == "?" {
                opString += randomOperations.randomElement() ?? "*"
                isQuestionMark = true
            }
           // print("op in \(opString)")
        let mathFunction = mathStuffFactory(opString: opString) // A
            
            let num1 = Double(userInputAsArray[0]) ?? 0.0 //number
            
            let num2 = Double(userInputAsArray[2]) ?? 0.0 // number
            
            let calcu = mathFunction(num1,num2) // B
        return calcu
        
    } else {
        print("ignoring you")
        return 0.0
    }

}
print(takeInInput(input: userInput))
var randomOperations1 = true

    
if isQuestionMark {
    repeat {
    
    print("Guess what type of operator, +, -, * or /")
   
    let randomOperations = readLine() ?? "operator"
        
//        print("again \(randomOperationsElement)")
    if randomOperations == opString {
        print("Congrats You are Correct !!")
            randomOperations1 = false
    } else {
        print("Sorry try again")
        randomOperations1 = true

    }
} while  randomOperations1

}
print("=================================F i L T E R ============================================")

} else if pickOne == "b" {
    print("Since Picked b. Please pick a HighOrderFunction, filter, map, or reduce")
    sleep(1)
    let highOrderFunction = readLine()?.lowercased() ?? "filter"
    
   if highOrderFunction == "filter"{
    print("high order function EX. filter 1,2,3 by < 2")
    
    let playersResponse = readLine() ?? "function"
    
    func filterFunc(arr:[Double], closure:(Double)-> Bool) -> [Double]{
      var filterResults = [Double]()
        
       for num in arr {
       if closure(num) {
        //
           filterResults.append(num)
           }
       }
       return filterResults
    }
    var unwrappedArrayNum = [Double]()

    let playersResponseB = playersResponse.components(separatedBy: " ") // reads the readLine and the component separates into an array of strings by the spaces
    let playersResponse1 = playersResponseB[1].components(separatedBy: ",")
         
         for nums in playersResponse1 {
             if let unwrappedNum = Double(nums) {
                // we use if let when we have a condition
                 unwrappedArrayNum.append(unwrappedNum)
                // append is adding thing to the array
             } else {
                print(nums)
                
            }
         }
    
    let filterNumberBy = Double(playersResponseB[4]) ?? 4.0
    
    if playersResponseB[3] == "<" {
//    print(filterFunc(arr: unwrappedArrayNum, closure: {$0 < filterNumberBy}))
    } else if playersResponseB[3] == ">" {
    print(filterFunc(arr: unwrappedArrayNum, closure: {$0 > filterNumberBy}))
        
        
        
        
        
print("================================== M A P S =================================================")
        }
   } else if highOrderFunction == "map" {
    
    print("high Order Function E X A M P L E ‼️: maps 1,2,3 by / 2 ")
    
    let gamerResponse = readLine() ?? "Operation" //"maps 1,2,3 by / 2"
    func mapsGame(arr: [Double], closure: (Double) -> Double) -> [Double] {
      var mapsFunctionGame = [Double]()
      for num in arr {
        mapsFunctionGame.append(closure(num))
      }
      
      return mapsFunctionGame
    }
    
    var unwrappedArrayMapNumber = [Double]()
    let gamerResponseA = gamerResponse.components(separatedBy: " ") // reads the readLine and the component separates into an array of strings by the spaces // ["map","1,2,3","by","*","50"]
    let gamerResponse1 = gamerResponseA[1].components(separatedBy: ",")
         
         for nums in gamerResponse1 {
             if let unwrappedNumMap = Double(nums) {
                // we use if let when we have a condition
                 unwrappedArrayMapNumber.append(unwrappedNumMap)
                // append is adding thing to the array
             } else {
                print(nums)
                
            }
         }
    
    
    let mapNumberBy = Double(gamerResponseA[4]) ?? 4.0
    
    if gamerResponseA[3] == "*" {
        print(mapsGame(arr: unwrappedArrayMapNumber, closure: {$0 * mapNumberBy}))
        
    } else if gamerResponseA[3] == "/" {
        print(mapsGame(arr: unwrappedArrayMapNumber, closure: {$0 / mapNumberBy}))

    } else if gamerResponseA[3] == "+" {
        print(mapsGame(arr: unwrappedArrayMapNumber, closure: {$0 + mapNumberBy}))
        
    } else if gamerResponseA[3] == "-" {
        print(mapsGame(arr: unwrappedArrayMapNumber, closure: {$0 + mapNumberBy}))
    }
    
    
    
    
    }
    }
    
    
    
    
    







// 5 + 5 -> [5, + 5]

//filter 1,2,3,4,5,6, by < 6 -> ["filter", 1,2,3,4, "by", "<","6"]
//var array = [1,2,3,4,54]
//func filterFunc(arr:[Double], closure:(Double) -> Bool) -> [Double] {
//
//    var result = [Double]()
//    for num in arr{
//        if closure(num){
//            result.append(num)
//
//        }
//
//    }
//
//    return [0.0]
//}
//if array[2] == "<" {
//print(filterFunc(arr:array, closure: {$0 < 3}))
//}else {
//    print()
//}
//let calcu = mathFunction(10,5)
//print("your calculation is \(calcu)")

//user has to input


//How to Ask Questions: Say What You Know
//1. Reread the question and underline the task

// needs filters, function, a less than and also a greater than
// why does it need a less than and greater than ????
// only fliter the Int's



//2. Define the vocab

// filter : Returns an array containing, in order, the elements of the sequence that satisfy the given predicate.
// meaning it would put it in the order you want it for examples 3 5 7 10 1 20 2 the filter would print 1, 2, 3

//3. Find the input and output
//4. Identify what you do know
//5. list the coding steps, run, and refactor
        // map
        // filter
       // reduce
      // while loop
     // array
