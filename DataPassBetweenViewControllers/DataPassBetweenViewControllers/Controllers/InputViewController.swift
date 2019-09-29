//
//  InputViewController.swift
//  DataPassBetweenViewControllers
//
//  Created by Shuvo on 29/9/19.
//  Copyright © 2019 com.example.learn.iOS.swift. All rights reserved.
//

import UIKit

class InputViewController: UIViewController, DisplayViewControllerDelegate {
    func dataPassConfarmation(massage: String) {
        print(massage)
    }
    

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var mobileNoField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "InputToDisplay") {
            let disPlayVC = segue.destination as! DisplayViewController
            disPlayVC.displayDelegate = self
            DispatchQueue.main.async {
                disPlayVC.name.text = self.nameField.text
                disPlayVC.mobileNo.text = self.mobileNoField.text
                disPlayVC.email.text = self.emailField.text
            }
        }
    }
    
    @IBAction func inputToDisplay(_ sender: Any) {
        self.performSegue(withIdentifier: "InputToDisplay", sender: self)
    }
    
}
