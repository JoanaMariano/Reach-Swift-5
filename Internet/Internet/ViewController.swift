//
//  ViewController.swift
//  Internet
//
//  Created by Joana on 13/02/2019.
//  Copyright © 2019 Joana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let checkconnection: NSString = greet(netstatus: "") as NSString;
        
        if checkconnection.contains("1") {
            print("connected wifi")
        }
            
        else{
            print("not connected")
        }
        
    }
    
    func greet(netstatus: String) -> String {
        let status = Reach().connectionStatus()
        switch status {
        case .unknown, .offline:
            return "0"
        case .online(.wwan):
            return "1"
        case .online(.wiFi):
            return "1"
        }
    }


}

