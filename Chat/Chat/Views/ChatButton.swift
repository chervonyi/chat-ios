//
//  ChatButton.swift
//  Chat
//
//  Created by Yuri Chervonyi on 6/5/19.
//  Copyright © 2019 CHRApps. All rights reserved.
//

import UIKit

class ChatButton: UIButton {
    
    private var _isChecked = false
    
    @IBInspectable var isChecked: Bool {
        get { return _isChecked }
        
        set {
            _isChecked = newValue
            
            if (newValue) {
                self.backgroundColor = #colorLiteral(red: 0.1450980392, green: 0.4901960784, blue: 0.7803921569, alpha: 1)
                self.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: UIControlState.normal)
                self.layer.borderWidth = 0
            } else {
                self.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                self.setTitleColor(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1), for: UIControlState.normal)
                self.layer.borderWidth = 1
                layer.borderColor = #colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton() {
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.layer.cornerRadius = 17
        self.layer.masksToBounds = true
        self.titleLabel?.font = .systemFont(ofSize: 14)
    
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 34))
        self.addConstraint(NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100))
        
        isChecked = false
    }
}
