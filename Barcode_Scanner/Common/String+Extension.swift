//
//  String+Extension.swift
//  Barcode_Scanner
//
//  Created by Ross on 30/03/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        return Bundle.main.localizedString(forKey: self, value: "", table: nil)
    }
    
    enum Localized {
        
        static let pressToScanProduct = "Press_To_Scan_Product".localized
        static let orUPC = "Or_UPC".localized
        static let find = "Find".localized

    }
}
