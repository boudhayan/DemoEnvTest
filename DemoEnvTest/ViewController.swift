//
//  ViewController.swift
//  DemoEnvTest
//
//  Created by Boudhayan Biswas on 18/11/17.
//  Copyright © 2017 Boudhayan Biswas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let server_url = Environment().configuration(PlistKey.ServerURL)
        print(server_url)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

