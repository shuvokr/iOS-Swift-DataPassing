//
//  ViewController.swift
//  DataPassBetweenViewControllers
//
//  Created by Shuvo on 29/9/19.
//  Copyright © 2019 com.example.learn.iOS.swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func mainToInput(_ sender: Any) {
        self.performSegue(withIdentifier: "MainToInput", sender: self)
    }
    
}

