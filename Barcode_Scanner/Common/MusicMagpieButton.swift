//
//  MusicMagpieButton.swift
//  Barcode_Scanner
//
//  Created by Ross on 29/03/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import UIKit

class MusicMagpieButton: UIButton {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.commonInit()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    func commonInit(){
        
        backgroundColor = .lightTealButtonColor
        setTitleColor( .buttonNavyColor, for: .normal)
        setTitleColor( .pageCreamLabelColor, for: .highlighted)
        titleLabel?.font = .buttonFont
        clipsToBounds = true
        setProperties(borderColor: .lightTealButtonColor, borderWidth:1.0, cornerRadius:5.0)
        titleEdgeInsets = UIEdgeInsets(top: 5.0, left: 5.0, bottom: 5.0, right: 5.0)

    }
    
    func setProperties(borderColor: UIColor, borderWidth: CGFloat, cornerRadius: Float) {
        
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = CGFloat(borderWidth)
        self.layer.cornerRadius  = CGFloat(cornerRadius)
    }
}
