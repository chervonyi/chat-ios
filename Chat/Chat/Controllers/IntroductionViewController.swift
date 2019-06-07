//
//  ViewController.swift
//  Chat
//
//  Created by Yuri Chervonyi on 6/4/19.
//  Copyright © 2019 CHRApps. All rights reserved.
//

import UIKit

class InputNameViewController: UIViewController {

    
    @IBOutlet weak var textFieldName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateView()
    }
    
    private func updateView() {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textFieldName.frame.height - 5, width: textFieldName.frame.width, height: 2)
        
        bottomLine.backgroundColor = #colorLiteral(red: 0.1529411765, green: 0.4666666667, blue: 0.7529411765, alpha: 1)
        textFieldName.borderStyle = UITextBorderStyle.none
        textFieldName.layer.addSublayer(bottomLine)
    }

    @IBAction func onClickSubmit(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toSelectUserGender", sender: nil)
    }
}

