//
//  ProductViewController.swift
//  Barcode_Scanner
//
//  Created by Ross on 29/03/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    private let productInformation = MusicMagpieLabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupSubviews()
        setupAutoLayout()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func showProductInfo(products: [Product]) {
        for product in products {
            if product.total == 1 {
                productInformation.isHidden = false
            } else {
                productInformation.isHidden = true
            }
        }
    }
}

extension ProductViewController: Subviewable {
    
    internal func setupHierarchy() {
        view.addSubview(productInformation)
    }
    
    internal func setupSubviews() {
    }
    
    internal func setupAutoLayout() {
        self.productInformation.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
}
