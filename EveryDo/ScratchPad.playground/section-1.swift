// Playground - noun: a place where people can play

import UIKit



var myArray1 = [1,2,3]
var myArray2 = myArray1
myArray2[0] = 9
myArray2
myArray1


protocol DiceGame {
    func rollDice()
}


class SnakesAndLadders: DiceGame {
    var Players: Int!
    var diceGameDelegate: DiceGame!
    func rollDice() {
        println("Yeah")
    }

}

var myGame = SnakesAndLadders()

