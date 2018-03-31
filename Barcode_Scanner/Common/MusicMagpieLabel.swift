//
//  MusicMagpieLabel.swift
//  Barcode_Scanner
//
//  Created by Ross on 30/03/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import UIKit

class MusicMagpieLabel: UILabel {
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.commonInit()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    func commonInit(){
        self.textColor = .navyLabelColor
        self.numberOfLines = 2
        self.textAlignment = .center
        self.font = .mainLabelFont
    }
}

