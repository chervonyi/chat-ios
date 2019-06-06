//
//  SelectDesirableGenderViewController.swift
//  Chat
//
//  Created by Yuri Chervonyi on 6/6/19.
//  Copyright © 2019 CHRApps. All rights reserved.
//

import UIKit

class SelectDesirableGenderViewController: UIViewController {

    @IBOutlet weak var buttonMan: ChatButton!
    @IBOutlet weak var buttonWoman: ChatButton!
    @IBOutlet weak var buttonAny: ChatButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onChangeType(_ sender: ChatButton) {
        buttonMan.isChecked = sender == buttonMan
        buttonWoman.isChecked = sender == buttonWoman
        buttonAny.isChecked = sender == buttonAny
    }
    
    @IBAction func onClickNext(_ sender: ChatButton) {
        performSegue(withIdentifier: "toSelectLanguage", sender: nil)
    }
    
}
