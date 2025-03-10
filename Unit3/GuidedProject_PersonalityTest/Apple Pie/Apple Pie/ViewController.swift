//
//  ViewController.swift
//  Apple Pie
//
//  Created by spring2025 on 3/8/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
  
    
    var listOfWords = ["bucaneer","swift","glorious","incandescent","program"]
    let incorrectMovesAllowed = 7
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    struct Game {
        var word: String
        var incorrectMovesRemaining: Int
        var guessedLetters: [Character]
        
        mutating func playerGuessed(letter: Character) {
            guessedLetters.append(letter)
            if !word.contains(letter){
                incorrectMovesRemaining -= 1
            }
        }
    }
    
    
    func updateGameState(){
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        }else if currentGame.word == currentGame.formattedWord {
            totalLosses += 1
        }else {
            updateUI()
        }
        
        
        var currentGame: Game!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            newRound()
        }
        
        @IBAction func letterButtonPressed(_ sender: UIButton) {
            sender.isEnabled = false
            let letterString = sender.title(for: .normal)!
            let letter = Character(letterString.lowercased())
            currentGame.playerGuessed(letter: letter)
            updatedGameState()
        }


    
    
    func newRound(){
        if !listofWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
            enableLetterButtons (true)
            updateUI()
        }else {
            enableLetterButtons(false)
        }

        
        func enableLetterButtons(_ enable: Bool) {
            for button in letterButtons {
                button.isEnabled = enable
            }
        }
        
    
    struct Game{
        var word: String
        var incorrectMovesRemaining: Int
        var guessedLetters: [Character]
        
        mutating func playerGuessed(letter: Character){
            guessedLetters.append(letter)
            if !word.contains(letter){
                incorrectMovesRemaining -= 1
            }
        }
        var formattedWord: String {
            var guessedWord = " "
            for letter in word {
                if guessedLetters.contains(letter){
                    guessedWord += "\(letter)"
                }else {
                    guessedWord += " "
                }
            }
            return guessedWord
        }
    }
  
        }

    }

  


