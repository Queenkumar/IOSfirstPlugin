//
//  ViewController.swift
//  IOSFirstPlugin
//
//  Created by QueenzendWebsolutions on 11/20/2020.
//  Copyright (c) 2020 QueenzendWebsolutions. All rights reserved.
//

import UIKit
import IOSFirstPlugin

class ViewController: UIViewController {
    override func viewDidLoad() {
       let log = Logger()
        log.printLog()
        //log.UserLoginData(device_id: "123456",email: "pankaj@gmail.com",source: "ios",company_token: "c20ad4d76fe97759aa27a0c99bff6710",password: "123456")
        super.viewDidLoad()
        log.printLog()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

