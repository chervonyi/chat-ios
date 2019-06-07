//
//  ChatViewController.swift
//  Chat
//
//  Created by Yuri Chervonyi on 6/5/19.
//  Copyright © 2019 CHRApps. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        testFillUpStackWithMessages()
    }

    func testFillUpStackWithMessages() {
        let msg1 = ChatMessageBlock(frame: CGRect(x: 0, y: 0, width: 400, height: 50))
        msg1.isUserMessage = true
        msg1.setMessage(text: "Hello word. It is my message!")
        tableView.addSubview(msg1)
        
        // Decided not to continue this project.
    }
    
    @IBAction func onClickChangeName(_ sender: UIButton) {
        performSegue(withIdentifier: "toChangeName", sender: nil)
    }
    
    @IBAction func onClickSearch(_ sender: UIButton) {
        performSegue(withIdentifier: "toSearching", sender: nil)
    }
    
    @IBAction func onClickSettings(_ sender: UIButton) {
        performSegue(withIdentifier: "toSettings", sender: nil)
    }
}
