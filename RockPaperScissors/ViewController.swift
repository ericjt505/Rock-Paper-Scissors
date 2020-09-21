//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Eric Tolbert on 9/20/20.
//  Copyright © 2020 Eric Tolbert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //For circles & square wth border
    @IBOutlet weak var circleOneLabel: UILabel!
    @IBOutlet weak var circleTwoLabel: UILabel!
    @IBOutlet weak var circleThreeLabel: UILabel!
    @IBOutlet weak var countBoxLabel: UILabel!
    
    //Player number on left, Bot number on Right
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var botScoreLabel: UILabel!
    
    //Keep score
    @IBOutlet weak var keepPlayerScore: UILabel!
    @IBOutlet weak var keepBotScore: UILabel!
    
    @IBOutlet weak var showMyResults: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Make a circle
        self.circleOneLabel.layer.cornerRadius = 57
        self.circleTwoLabel.layer.cornerRadius = 57
        self.circleThreeLabel.layer.cornerRadius = 57
        
        //Add a border
        self.circleOneLabel.layer.borderWidth = 3
        self.circleOneLabel.layer.borderColor = UIColor.white.cgColor
        self.circleTwoLabel.layer.borderWidth = 3
        self.circleTwoLabel.layer.borderColor = UIColor.white.cgColor
        self.circleThreeLabel.layer.borderWidth = 3
        self.circleThreeLabel.layer.borderColor = UIColor.white.cgColor
        self.countBoxLabel.layer.borderWidth = 3
        self.countBoxLabel.layer.borderColor = UIColor.white.cgColor
    }

    //What the player chooses
    //Use a random number generator to generate a random value for the player and have a choice based on that.
    //1 = rock, 2 = paper, 3 = scissors
    
    //Show random numbers for player and bot from rock
    @IBAction func rockButtonPressed(_ sender: Any)
    {
        let rockButtonPressed = Int.random(in: 1...5)
        playerScoreLabel.text = String(rockButtonPressed)
        let botRandomChoice = Int.random(in: 1...5)
        botScoreLabel.text = String(botRandomChoice)
    }
    //Show random numbers for player and bot from paper
    @IBAction func paperButtonPressed(_ sender: Any)
    {
        let paperButtonPressed = Int.random(in: 1...5)
        playerScoreLabel.text = String(paperButtonPressed)
        let botRandomChoice = Int.random(in: 1...5)
        botScoreLabel.text = String(botRandomChoice)
    }
    //Show random numbers for player and bot from scissors
    @IBAction func scissorsButtonPressed(_ sender: Any)
    {
        let scissorsButtonPressed = Int.random(in: 1...5)
        playerScoreLabel.text = String(scissorsButtonPressed)
        let botRandomChoice = Int.random(in: 1...5)
        botScoreLabel.text = String(botRandomChoice)
    }
    //Start game over
    @IBAction func startOverPressed(_ sender: Any)
    {
        playerScoreLabel.text = String(0)
        botScoreLabel.text = String(0)
    }
    //Track you won
    //I could not get this to work, but I will keep trying
    
    
    //Show results
    //I could not get this to work, but I will keep trying
    
}

