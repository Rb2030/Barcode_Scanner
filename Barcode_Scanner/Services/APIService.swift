//
//  APIService.swift
//  Barcode_Scanner
//
//  Created by Ross on 01/04/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import Foundation
import Alamofire

class APIService {
    
    var initialViewController: InitialViewController!

    func getProductData(completion: @escaping(_ success:Bool, _ errorString: String?)->Void) {
        
        var upcNumber: String!
        let url = "https://api.upcitemdb.com/prod/trial/lookup?upc="

        upcNumber = self.initialViewController!.input
        print(url + upcNumber + " ")
        request(url + upcNumber).responseJSON { response in
            
            if response.result.isFailure {
                print(response.result.error as Any)
            } else {
            
            if let JSON = response.result.value {
                var jsonObject = JSON as! [String: AnyObject]
//                let title = jsonObject["title"] as? String
//                let lowestRecordedPrice = jsonObject["lowest_recorded_price"] as? String
                print("JSON: \(jsonObject)")
//                print("\nIP Product title: \(String(describing: title))")
//                print("\nLowest Recorded Price: \(String(describing: lowestRecordedPrice))")
                }
            }
        }
    }
}



