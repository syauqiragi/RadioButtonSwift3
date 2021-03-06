//
//  ViewController.swift
//  RadioButtonSwift3
//
//  Created by Abdullah Alhazmy on 5/4/17.
//  Copyright © 2017 Abdullah Alhazmy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var radioButton1: RadioButton!
    @IBOutlet weak var radioButton2: RadioButton!
    
    lazy var radioButtons: [RadioButton] = {
        return [
            self.radioButton1,
            self.radioButton2,
        ]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onRadioButtonClicked(_ sender: RadioButton) {
        updateRadioButton(sender)
    }
    @IBAction func onSecondRadioButtonClicked(_ sender: RadioButton) {
         updateRadioButton(sender)
    }
    
    func updateRadioButton(_ sender: RadioButton){
        radioButtons.forEach { $0.isSelected = false }
        sender.isSelected = !sender.isSelected

    }
    
    func getSelectedRadioButton() -> RadioButton? {
        var radioButton: RadioButton?
         radioButtons.forEach { if($0.isSelected){ radioButton =  $0 } }
        return radioButton
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

