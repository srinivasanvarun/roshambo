//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Varun Srinivasan on 8/6/17.
//  Copyright © 2017 Varun Srinivasan. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var userinputValue: Int?
    var systeminputValue: Int?
    @IBOutlet weak var systemSelectionImage: UIImageView!
    @IBOutlet weak var userSelectionImage: UIImageView!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    func randomValue() {
        // Generate a random Int32 using arc4Random
        systeminputValue = Int(1 + arc4random() % 3)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        switch userinputValue {
        case 1?:
            self.userSelectionImage.image = UIImage(named: "rock")
            break
            
        case 2?:
            self.userSelectionImage.image = UIImage(named: "paper")
            break

        case 3?:
            self.userSelectionImage.image = UIImage(named: "scissors")
            break

        default:
            self.userSelectionImage.image = nil
        }
        self.randomValue()
        switch systeminputValue {
        case 1?:
            self.systemSelectionImage.image = UIImage(named: "rock")
            break
            
        case 2?:
            self.systemSelectionImage.image = UIImage(named: "paper")
            break
            
        case 3?:
            self.systemSelectionImage.image = UIImage(named: "scissors")
            break
            
        default:
            self.systemSelectionImage.image = nil
        }
        if userinputValue == systeminputValue{
            self.resultImage.image = UIImage(named: "tie")
            self.resultLabel.text = "It's a tie!!!"
        }
        if(userinputValue==1){
            switch systeminputValue {
            case 2?:
                self.resultImage.image = UIImage(named: "PaperCoversRock")
                self.resultLabel.text = "Paper covers Rock. You Lose!"
                break
                
            case 3?:
                self.resultImage.image = UIImage(named: "RockCrushesScissors")
                self.resultLabel.text = "Rock crushes Scissors. You Win!"
                break
                
            default:
                self.resultImage.image = nil
            }
        }
        if(userinputValue==2){
            switch systeminputValue {
            case 1?:
                self.resultImage.image = UIImage(named: "PaperCoversRock")
                self.resultLabel.text = "Paper covers Rock. You Win!"
                break
                
            case 3?:
                self.resultImage.image = UIImage(named: "ScissorsCutPaper")
                self.resultLabel.text = "Scissors cut Paper. You Lose!"
                break
                
            default:
                self.resultImage.image = nil
            }
        }
        if(userinputValue==3){
            switch systeminputValue {
            case 1?:
                self.resultImage.image = UIImage(named: "RockCrushesScissors")
                self.resultLabel.text = "Rock crushes Scissors. You Lose!"
                break
                
            case 2?:
                self.resultImage.image = UIImage(named: "ScissorsCutPaper")
                self.resultLabel.text = "Scissors cut Paper. You Win!"
                break
                
            default:
                self.resultImage.image = nil
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
