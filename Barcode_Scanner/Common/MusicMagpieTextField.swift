//
//  MusicMagpieTextField.swift
//  Barcode_Scanner
//
//  Created by Ross on 30/03/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import UIKit

class MusicMagpieTextField: UITextField {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.commonInit()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    func commonInit(){
        textColor = UIColor.black
        setProperties(borderWidth:1.0, borderColor: UIColor.black, cornerRadius:5.0)
        font = .buttonFont
        textAlignment = .left
        backgroundColor = UIColor.white
    }
    
    func setProperties(borderWidth: Float, borderColor: UIColor, cornerRadius: Float) {
        self.layer.borderWidth = CGFloat(borderWidth)
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius  = CGFloat(cornerRadius)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return super.textRect(forBounds: UIEdgeInsetsInsetRect(bounds, UIEdgeInsetsMake(5, 5, 5, 5)))
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return super.editingRect(forBounds: UIEdgeInsetsInsetRect(bounds,  UIEdgeInsetsMake(5, 5, 5, 5)))
    }
}

