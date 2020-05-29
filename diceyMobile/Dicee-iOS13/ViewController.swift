//
//  ViewController.swift
//  Granny Roll
//
//  Created by Brian Haucke on 1/4/2020.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        check1.isHidden = true
        check2.isHidden = true
        check3.isHidden = true
        check4.isHidden = true
        check5.isHidden = true
        check6.isHidden = true
        
        
    }
    @IBOutlet weak var check1: UIImageView!
    @IBOutlet weak var check2: UIImageView!
    @IBOutlet weak var check3: UIImageView!
    @IBOutlet weak var check4: UIImageView!
    @IBOutlet weak var check5: UIImageView!
    @IBOutlet weak var check6: UIImageView!
    @IBOutlet weak var score: UITextField!
    
    
    // ctrl->drag and drop dice images here
    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    @IBOutlet weak var diceImageView5: UIImageView!
    @IBOutlet weak var diceImageView6: UIImageView!
    
    var diceRolls = 0
    var isButton1Pressed = false
    var isButton2Pressed = false
    var isButton3Pressed = false
    var isButton4Pressed = false
    var isButton5Pressed = false
    var isButton6Pressed = false
    var rollButtonPressed = false
    var currentScore = 0
    var dice1Score = 0
    var dice2Score = 0
    var dice3Score = 0
    var dice4Score = 0
    var dice5Score = 0
    var dice6Score = 0
    var ones = 0
    var twos = 0
    var threes = 0
    var fours = 0
    var fives = 0
    var sixes = 0
    var currentCheckScore = 0
    var checkDice1Score = 0
    var checkDice2Score = 0
    var checkDice3Score = 0
    var checkDice4Score = 0
    var checkDice5Score = 0
    var checkDice6Score = 0
    
    func clear() {
        ones = 0
        twos = 0
        threes = 0
        fours = 0
        fives = 0
        sixes = 0
    }
    
    let scoreString = "Total score: "
    

    // When dice are tapped, don't roll them again

    @IBAction func button1Pressed(_ sender: UIButton) {
        if diceRolls > 0 {
            if (isButton1Pressed == false){
                isButton1Pressed = true
                check1.isHidden = false
            } else {
                isButton1Pressed = false
                check1.isHidden = true
            }
        }
    }
    @IBAction func button2Pressed(_ sender: UIButton) {
        if diceRolls > 0 {
            if (isButton2Pressed == false){
                isButton2Pressed = true
                check2.isHidden = false
            } else {
                isButton2Pressed = false
                check2.isHidden = true
            }
        }
    }
    @IBAction func button3Pressed(_ sender: UIButton) {
        if diceRolls > 0 {
            if (isButton3Pressed == false){
                isButton3Pressed = true
                check3.isHidden = false
            } else {
                isButton3Pressed = false
                check3.isHidden = true
            }
        }
    }
    @IBAction func button4Pressed(_ sender: UIButton) {
        if diceRolls > 0 {
            if (isButton4Pressed == false){
                isButton4Pressed = true
                check4.isHidden = false
            } else {
                isButton4Pressed = false
                check4.isHidden = true
            }
        }
    }
    @IBAction func button5Pressed(_ sender: UIButton) {
        if diceRolls > 0 {
            if (isButton5Pressed == false){
                isButton5Pressed = true
                check5.isHidden = false
            } else {
                isButton5Pressed = false
                check5.isHidden = true
            }
        }
    }
    
    @IBAction func button6Pressed(_ sender: UIButton) {
        if diceRolls > 0 {
            if (isButton6Pressed == false){
                isButton6Pressed = true
                check6.isHidden = false
            } else {
                isButton6Pressed = false
                check6.isHidden = true
            }
        }
    }
    
    
    
    // When the 'Roll' button gets tapped
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        clear()
        rollButtonPressed = true
        diceRolls+=1
        print("`Roll` Button got tapped.")
        //print(diceRolls)
        
        // Array of possible dice rolls - image Literals
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        //array for 1s and 5s - Probably delete
        //var rollArray : [UIImageView] = []
        
        
        //Select a random element from the diceArray array
        //diceImageView2.image =  diceArray[Int.random(in:0...5)]
        
        if (isButton1Pressed == false){
        diceImageView1.image = diceArray.randomElement()
            //rollArray.append(diceImageView1)
            
        }
        if (isButton2Pressed == false){
        diceImageView2.image = diceArray.randomElement()
            
            
        }
        if (isButton3Pressed == false){
        diceImageView3.image = diceArray.randomElement()
           
            
        }
        if (isButton4Pressed == false){
        diceImageView4.image = diceArray.randomElement()
           
            
        }
        if (isButton5Pressed == false){
        diceImageView5.image = diceArray.randomElement()
            
            
        }
        if (isButton6Pressed == false){
        diceImageView6.image = diceArray.randomElement()
            
            
        }
//        if (diceRolls == 3){
//            isButton1Pressed = true
//            isButton2Pressed = true
//            isButton3Pressed = true
//            isButton4Pressed = true
//            isButton5Pressed = true
//            isButton6Pressed = true
//        }
        
        switch diceImageView1.image {
            
        case #imageLiteral(resourceName: "DiceOne"):
            dice1Score = 100

        case #imageLiteral(resourceName: "DiceFive"):
            dice1Score = 50

        default:
            dice1Score = 0
        }
        
        print ("dice1: " + String(dice1Score))
        
    
        switch diceImageView2.image {
        case #imageLiteral(resourceName: "DiceOne"):
            dice2Score = 100
           

        case #imageLiteral(resourceName: "DiceFive"):
            dice2Score = 50
           
        default:
            dice2Score = 0
            }
            
        
        print ("dice2: " + String(dice2Score))

        switch diceImageView3.image {
        case #imageLiteral(resourceName: "DiceOne"):
            dice3Score = 100

        case #imageLiteral(resourceName: "DiceFive"):
            dice3Score = 50

        default:
            dice3Score = 0
        }
        print ("dice3: " + String(dice3Score))

        switch diceImageView4.image {
        case #imageLiteral(resourceName: "DiceOne"):
            dice4Score = 100

        case #imageLiteral(resourceName: "DiceFive"):
            dice4Score = 50
            
        default:
            dice4Score = 0
        }
        print ("dice4: " + String (dice4Score))

        switch diceImageView5.image {
        case #imageLiteral(resourceName: "DiceOne"):
            dice5Score = 100

        case #imageLiteral(resourceName: "DiceFive"):
            dice5Score = 50
  
        default:
            dice5Score = 0
        }
        print ("dice5: " + String(dice5Score))

        switch diceImageView6.image {
        case #imageLiteral(resourceName: "DiceOne"):
            dice6Score = 100

        case #imageLiteral(resourceName: "DiceFive"):
            dice6Score = 50

        default:
            dice6Score = 0
        }
        print ("dice6: " + String(dice6Score))

        currentScore = dice1Score + dice2Score + dice3Score + dice4Score + dice5Score + dice6Score
        

        print ("Total score: " + String(currentScore))
        
        print ("Checked dice score: " + String(currentCheckScore))

        
    }
    
    
    // When Update is tapped, display current score
           @IBAction func updatePressed(_ sender: UIButton) {
            
            // Check to see if dice are checked
            // if they are, assign value to checkDiceScore var
            
            if (check1.isHidden == false) {
                checkDice1Score = dice1Score
            } else {
                checkDice1Score = 0
            }
            if (check2.isHidden == false) {
            checkDice2Score = dice2Score
            } else {
                checkDice2Score = 0
            }
            if (check3.isHidden == false) {
            checkDice3Score = dice3Score
            } else {
                checkDice3Score = 0
            }
            if (check4.isHidden == false) {
            checkDice4Score = dice4Score
            } else {
                checkDice4Score = 0
            }
            if (check5.isHidden == false) {
            checkDice5Score = dice5Score
            } else {
                checkDice5Score = 0
            }
            if (check6.isHidden == false) {
            checkDice6Score = dice6Score
            } else {
                checkDice6Score = 0
            }
            
            // Add up the score
            currentCheckScore = checkDice1Score + checkDice2Score + checkDice3Score
            + checkDice4Score + checkDice5Score + checkDice6Score
            // Display the correct score
               score.text = String(currentCheckScore)

           }
    
//    if (none of the unchecked boxes = 1 or 5) {
//        Game is over
//        Dice reset
//        Score is 0
//    }
    

    
    // When the Reset button is tapped, reset all dice and un-hold them
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        diceRolls = 0
        print("Dice rolls reset to ", diceRolls)
        diceImageView1.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView2.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView3.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView4.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView5.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView6.image = #imageLiteral(resourceName: "DiceOne")
        isButton1Pressed = false
        isButton2Pressed = false
        isButton3Pressed = false
        isButton4Pressed = false
        isButton5Pressed = false
        isButton6Pressed = false
        check1.isHidden = true
        check2.isHidden = true
        check3.isHidden = true
        check4.isHidden = true
        check5.isHidden = true
        check6.isHidden = true
        currentScore = 0
        score.text = String(currentScore)
    }
    

}

