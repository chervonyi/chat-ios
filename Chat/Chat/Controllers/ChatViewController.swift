//
//  ChatViewController.swift
//  Chat
//
//  Created by Yuri Chervonyi on 6/5/19.
//  Copyright © 2019 CHRApps. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onClickChangeName(_ sender: UIButton) {
        performSegue(withIdentifier: "toChangeName", sender: nil)
    }
    
    @IBAction func onClickSearch(_ sender: UIButton) {
        performSegue(withIdentifier: "toSearching", sender: nil)
    }
    
}
