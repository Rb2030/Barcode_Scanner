//
//  ScanningScreenViewController.swift
//  Barcode_Scanner
//
//  Created by Ross on 29/03/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import UIKit
import AVFoundation
import SnapKit

class ScanningScreenViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate {
    
    var video = AVCaptureVideoPreviewLayer()
    private let squareImage = UIImageView(image: .squareImage)


    override func viewDidLoad() {
        super.viewDidLoad()
        cameraCaptureBarcode()
        setupHierarchy()
        setupSubviews()
        setupAutoLayout()
        
        func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
            if metadataObjects != nil && metadataObjects.count != 0 {
                
                if let object = metadataObjects[0] as? AVMetadataMachineReadableCodeObject
                {
                    if object.type == AVMetadataObject.ObjectType.upce {
                        let alert = UIAlertController(title: "Your code is:", message: object.stringValue, preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "Retake", style: .default, handler: nil))
                        alert.addAction(UIAlertAction(title: "Copy", style: .default, handler: { (nil) in
                            UIPasteboard.general.string = object.stringValue
                        }))
                        present(alert, animated: true, completion: nil)
                    }
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func cameraCaptureBarcode() {
        let session = AVCaptureSession()
        let captureDevice = AVCaptureDevice.default(for: AVMediaType.video)
        
        do
        {
            let input = try AVCaptureDeviceInput(device: captureDevice!)
            session.addInput(input)
        }
        catch
        {
            print("Unable to locate camera")
        }
        
        let output = AVCaptureMetadataOutput()
        session.addOutput(output)
        
        output.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
        
        output.metadataObjectTypes = [AVMetadataObject.ObjectType.upce]

        video = AVCaptureVideoPreviewLayer(session: session)
        video.frame = view.layer.bounds
        view.layer.addSublayer(video)
        
        session.startRunning()
    }
    
    
}


extension ScanningScreenViewController: Subviewable {
    
    internal func setupHierarchy() {
        view.addSubview(squareImage)
        view.bringSubview(toFront: squareImage)
        
    }
    
    internal func setupSubviews() {
        
    }
    
    internal func setupAutoLayout() {
        
        self.squareImage.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
    
}
