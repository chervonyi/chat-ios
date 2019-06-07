//
//  ChatMessageBlock.swift
//  Chat
//
//  Created by Yuri Chervonyi on 6/7/19.
//  Copyright © 2019 CHRApps. All rights reserved.
//

import UIKit

class ChatMessageBlock : UILabel {
    
    private var _isUserMessage: Bool = false
    
    @IBInspectable var isUserMessage: Bool {
        get { return _isUserMessage }
        
        set {
            _isUserMessage = newValue
            
            if newValue {
                backgroundColor = #colorLiteral(red: 0.1450980392, green: 0.4901960784, blue: 0.7803921569, alpha: 1)
                textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            } else {
                backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9529411765, blue: 0.9607843137, alpha: 1)
                textColor = #colorLiteral(red: 0.1333333333, green: 0.1294117647, blue: 0.1215686275, alpha: 1)
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    func setupView() {
        self.padding = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 20
        
        isUserMessage = false
    }
    
    func setMessage(text: String) {
        self.text = text
    }
}

extension UILabel {
    private struct AssociatedKeys {
        static var padding = UIEdgeInsets()
    }
    
    public var padding: UIEdgeInsets? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.padding) as? UIEdgeInsets
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.padding, newValue as UIEdgeInsets!, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    override open func draw(_ rect: CGRect) {
        if let insets = padding {
            self.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
        } else {
            self.drawText(in: rect)
        }
    }
    
    override open var intrinsicContentSize: CGSize {
        guard let text = self.text else { return super.intrinsicContentSize }
        
        var contentSize = super.intrinsicContentSize
        var textWidth: CGFloat = frame.size.width
        var insetsHeight: CGFloat = 0.0
        
        if let insets = padding {
            textWidth -= insets.left + insets.right
            insetsHeight += insets.top + insets.bottom
        }
        
        let newSize = text.boundingRect(with: CGSize(width: textWidth, height: CGFloat.greatestFiniteMagnitude),
                                        options: NSStringDrawingOptions.usesLineFragmentOrigin,
                                        attributes: [NSAttributedStringKey.font: self.font], context: nil)
        
        contentSize.height = ceil(newSize.size.height) + insetsHeight
        
        return contentSize
    }
}
