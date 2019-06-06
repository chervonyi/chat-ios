//
//  SelectUserGenderViewController.swift
//  Chat
//
//  Created by Yuri Chervonyi on 6/5/19.
//  Copyright © 2019 CHRApps. All rights reserved.
//

import UIKit

class SelectUserGenderViewController: UIViewController {

    @IBOutlet weak var buttonMan: ChatButton!
    @IBOutlet weak var buttonWoman: ChatButton!
    @IBOutlet weak var buttonSubmit: ChatButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onChangeGender(_ sender: ChatButton) {
        buttonMan.isChecked = sender == buttonMan
        buttonWoman.isChecked = sender == buttonWoman
        buttonSubmit.isHidden = false
    }
    
    @IBAction func onClickSubmit(_ sender: UIButton) {
        performSegue(withIdentifier: "toChat", sender: nil)
    }
    
}
