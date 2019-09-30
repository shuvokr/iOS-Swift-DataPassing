//
//  DisplayViewController.swift
//  DataPassBetweenViewControllers
//
//  Created by Shuvo on 29/9/19.
//  Copyright © 2019 com.example.learn.iOS.swift. All rights reserved.
//

import UIKit

protocol DisplayViewControllerDelegate : NSObjectProtocol {
    func dataPassConfarmation(massage : String)
}

class DisplayViewController: UIViewController {
    
    weak var displayDelegate : DisplayViewControllerDelegate?
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var mobileNo: UILabel!
    @IBOutlet weak var email: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dataPassConfarmationMassage()
    }
    
    @IBAction func backTo(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func dataPassConfarmationMassage() {
        DispatchQueue.main.async {
            if let delegate = self.displayDelegate {
                if(self.name.text!.count > 0) {
                    delegate.dataPassConfarmation(massage: "Successfully get the massage !")
                    delegate.dataPassConfarmation(massage: "Name : \(self.name.text!)")
                    delegate.dataPassConfarmation(massage: "Name : \(self.mobileNo.text!)")
                    delegate.dataPassConfarmation(massage: "Name : \(self.email.text!)")
                }
                else {
                    delegate.dataPassConfarmation(massage: "Not Successfully get the massage .")
                }
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
