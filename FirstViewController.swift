//
//  FirstViewController.swift
//  Roshambo
//
//  Created by Varun Srinivasan on 8/6/17.
//  Copyright © 2017 Varun Srinivasan. All rights reserved.
//

import UIKit

internal class FirstViewController: UIViewController{
    var cat:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! ResultViewController
        if cat == 0{
            controller.userinputValue = 3
        }
        else{
            controller.userinputValue = cat
        }
    }
    
    @IBAction func rockAction(_ sender: Any) {
        cat=1
        var controller: ResultViewController
        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        controller.userinputValue = cat
        present(controller, animated: true, completion: nil)
        
    }
    @IBAction func paperAction(_ sender: Any) {
        cat=2
        performSegue(withIdentifier: "resultviewnavSegue", sender: self)
    }
    
}
