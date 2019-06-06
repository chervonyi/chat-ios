//
//  SelectDesirableLanguageViewController.swift
//  Chat
//
//  Created by Yuri Chervonyi on 6/6/19.
//  Copyright © 2019 CHRApps. All rights reserved.
//

import UIKit

class SelectDesirableLanguageViewController: UIViewController {

    
    @IBOutlet var languageButtons: [ChatButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func onChangeLanguage(_ sender: ChatButton) {
        for button in languageButtons {
            button.isChecked = sender == button
        }
    }
    
    @IBAction func onClickStart(_ sender: ChatButton) {
        performSegue(withIdentifier: "toStartSearching", sender: nil)
    }
    
}
