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
        let numDice1 = Int.random(in: 0...5)
        let numDice2 = Int.random(in: 0...5)
        let nameImage : [String] = ["DiceOne","DiceTwo", "DiceThree","DiceFour","DiceFive","DiceSix"]
  
        FirstDice.image = UIImage(named: nameImage[numDice1])
        SecondDice.image = UIImage(named: nameImage[numDice2])
    }
}

