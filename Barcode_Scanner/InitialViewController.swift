//
//  ViewController.swift
//  Barcode_Scanner
//
//  Created by Ross on 29/03/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import UIKit
import SnapKit

class InitialViewController: UIViewController {
    
    private let magicMagpieImage = UIImageView(image: .magicMagpieLogo)
    private let scanProductButton = MusicMagpieButton()
    private let orUPCLabel = MusicMagpieLabel()
    private let upcField = MusicMagpieTextField()
    private let findUPCButton = MusicMagpieButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupSubviews()
        setupAutoLayout()
        upcField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        upcField.resignFirstResponder()
    }

    @objc  func pressToVisitScanScreen(_ sender: MusicMagpieButton) {
        let scanScreenVC = ScanningScreenViewController()
        navigationController?.pushViewController(scanScreenVC, animated: true)
    }
}



extension InitialViewController: Subviewable {
    
    internal func setupHierarchy() {
        view.addSubview(magicMagpieImage)
        view.addSubview(scanProductButton)
        view.addSubview(orUPCLabel)
        view.addSubview(upcField)
        view.addSubview(findUPCButton)
    }
    
    internal func setupSubviews() {
        view.backgroundColor = .tealBackgroundColor
        magicMagpieImage.contentMode = .scaleAspectFit
        scanProductButton.setTitle(String.Localized.pressToScanProduct,for: .normal)
        scanProductButton.addTarget(self, action: #selector(pressToVisitScanScreen(_:)), for: .touchUpInside)
        orUPCLabel.text = String.Localized.orUPC
        upcField.placeholder = "Enter UPC Number"
        upcField.keyboardType = UIKeyboardType.numberPad
        upcField.textAlignment = .center
        findUPCButton.setTitle(String.Localized.find,for: .normal)

    }
    
    internal func setupAutoLayout() {
        
        self.magicMagpieImage.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().offset(-Layout.buttonPadding)
            make.top.equalToSuperview().offset(Layout.margin)
            make.height.equalToSuperview().multipliedBy(0.4)
        }
        
        self.scanProductButton.snp.makeConstraints { (make) in
            make.top.equalTo(magicMagpieImage.snp.bottom).offset(Layout.buttonPadding)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.7)
        }
        
        self.orUPCLabel.snp.makeConstraints { (make) in
            make.top.equalTo(scanProductButton.snp.bottom).offset(Layout.bigButtonPadding)
            make.centerX.equalToSuperview()
            make.height.equalTo(scanProductButton)
        }
        
        self.upcField.snp.makeConstraints { (make) in
            make.top.equalTo(orUPCLabel.snp.bottom).offset(Layout.bigButtonPadding)
            make.centerX.equalToSuperview()
            make.height.equalTo(scanProductButton)
        }
        
        self.findUPCButton.snp.makeConstraints { (make) in
            make.top.equalTo(upcField.snp.bottom).offset(Layout.buttonPadding)
            make.centerX.equalToSuperview()
            make.height.equalTo(scanProductButton)
            make.width.equalTo(upcField).multipliedBy(0.5)
        }
    }
}


extension InitialViewController: UITextFieldDelegate {

func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    
        let text = textField.text ?? ""
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet) && text.count - range.length + string.count <= 12
    }
}





