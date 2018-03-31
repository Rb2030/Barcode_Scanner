//
//  Subviewable.swift
//  Barcode_Scanner
//
//  Created by Ross on 29/03/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import Foundation

@objc protocol Subviewable {
    func setupSubviews()
    func setupHierarchy()
    func setupAutoLayout()
}
