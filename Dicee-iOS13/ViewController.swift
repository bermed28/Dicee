//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    let dice = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    @IBOutlet weak var counter: UILabel!
    var points = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter.text = String(points)
    }

    @IBAction func rolled(_ sender: Any) {
        let dice1Roll = Int.random(in: 0..<dice.count)
        let dice2Roll = Int.random(in: 0..<dice.count)
            
        leftDice.image = dice[dice1Roll]
        rightDice.image = dice[dice2Roll]
        
        if dice1Roll == dice2Roll {
            print("Doubles! You get a point!")
            points += 1
            counter.text = String(points)
        }
        print("Rolled! Numbers were " + String(dice1Roll + 1) + " & " + String(dice2Roll + 1))
    }
    
    
    
}

