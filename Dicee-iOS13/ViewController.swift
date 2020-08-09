//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var FirstDice: UIImageView!
    @IBOutlet weak var SecondDice: UIImageView!
    @IBAction func RollBtn(_ sender: Any) {
        var counter: Int = 0
        print("Button click")
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { timer in
            print(counter)
            counter += 1
            self.changeUIImage()
            if(counter > 10){
                print("timesup")
                timer.invalidate()
            }
        })
    }
    func changeUIImage(){
        let numDice1 = Int.random(in: 1...6)
        let nameImage: String
        switch numDice1 {
        case 1:
            nameImage = "DiceOne"
        case 2:
            nameImage = "DiceTwo"
        case 3:
            nameImage = "DiceThree"
        case 4:
            nameImage = "DiceFour"
        case 5:
            nameImage = "DiceFive"
        case 6:
            nameImage = "DiceSix"
        default:
            nameImage = "DiceOne"
        }
        
        let numDice2 = Int.random(in: 1...6)
        let nameImage2: String
        switch numDice2 {
        case 1:
            nameImage2 = "DiceOne"
        case 2:
            nameImage2 = "DiceTwo"
        case 3:
            nameImage2 = "DiceThree"
        case 4:
            nameImage2 = "DiceFour"
        case 5:
            nameImage2 = "DiceFive"
        case 6:
            nameImage2 = "DiceSix"
        default:
            nameImage2 = "DiceOne"
        }
        FirstDice.image = UIImage(named: nameImage)
        SecondDice.image = UIImage(named: nameImage2)
    }
}

