//
//  ViewController.swift
//  basic1
//
//  Created by Adam Khan on 11/20/23.
//

import UIKit

class ViewController: UIViewController {

    var check = true
    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func topUPButtonClicked(_ sender: UIButton) {
        
        let topupcontroller = self.storyboard?.instantiateViewController(identifier: "topupcontrollerid") as! TopUpScreenViewController
        
        self.navigationController?.pushViewController(topupcontroller, animated: true)
    }
    
    
    @IBAction func loginButtonClicked(_ sender: UIButton) {
        let loginController = self.storyboard?.instantiateViewController(identifier: "loginPageID") as! Loginpage
        
        self.navigationController?.pushViewController(loginController, animated: true)
       
    }
    
    @IBAction func helpAndSupportClicked(_ sender: UIButton) {
        
        let helpAndSupportController = self.storyboard?.instantiateViewController(identifier: "helpAndSupportID") as! helpandsupport
        
        self.navigationController?.pushViewController(helpAndSupportController, animated: true)
    }
    
    
    @IBAction func topUpButton(_ sender: Any) {
        
        
    }
    
    
    @IBAction func whatsNewButton(_ sender: Any) {
        let whatsNewController =  self.storyboard?.instantiateViewController(identifier: "whatsNewID") as! whatsNewViewController
        
        
        self.navigationController?.pushViewController(whatsNewController, animated: true)
        
    }
    
    
    
    @IBAction func Actionbutton(_ sender: Any) {
        
        let topUpController = self.storyboard?.instantiateViewController(withIdentifier: "autoTopUpID") as! topUpController
        
        self.navigationController?.pushViewController(topUpController, animated: true)
        
        /*let alert1 = UIAlertController(title: "Auto Top Up", message: "Never run out of credit always stay  upto date get latest records", preferredStyle: .alert )
        
        let defaultaction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert1.addAction(defaultaction)
        self.present(alert1, animated: true, completion: nil) */
    }
    
}

