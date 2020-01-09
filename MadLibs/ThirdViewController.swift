//
//  ThirdViewController.swift
//  MadLibs
//
//  Created by Tommy Colella on 10/16/19.
//  Copyright © 2019 Tommy Colella. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var warGame = WarGame()
    var noun4 = ""
    var bodyPart = ""
   
    
    @IBOutlet weak var adjectiveTextField: UITextField!
    
    @IBOutlet weak var noun4TextField: UITextField!
    
    @IBOutlet weak var onomTextField: UITextField!
    
    @IBOutlet weak var personTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onButtonTapped2(_ sender: Any) {
        
        if adjectiveTextField.text?.count != 0 && noun4TextField.text?.count != 0 && onomTextField.text?.count != 0 && personTextField.text?.count != 0
        {
            adjective = String(adjectiveTextField.text!)
            noun4 = String(noun4TextField.text!)
            onom = String(onomTextField.text!)
            bodyPart = String(personTextField.text!)
            warGame.adjective = adjective
            warGame.noun4 = noun4
            warGame.onom = onom
            warGame.bodyPart = bodyPart
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! FinalViewController
        dvc.warGame = self.warGame
        
    }
}
