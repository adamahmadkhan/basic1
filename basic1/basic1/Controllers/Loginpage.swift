//
//  Loginpage.swift
//  basic1
//
//  Created by Adam Khan on 11/21/23.
//

import UIKit

class Loginpage: UIViewController {
    
    
    
    var check = true
    
    /*@IBOutlet weak var userName: UILabel!
    @IBOutlet weak var emailID: UILabel!
    @IBOutlet weak var fullName: UILabel!
    
    @IBOutlet weak var checkBoxOutlet: UIButton!
    @IBOutlet weak var changePasswordOulet: UIButton! */
    
    
    @IBOutlet weak var firstNameOutlet: UITextField!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var emailID: UILabel!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var lastNameOutlet: UITextField!
    @IBOutlet weak var checkButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      // Do any additional setup after loading the view.
        profilePicture.layer.cornerRadius = profilePicture.frame.height / 2
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: firstNameOutlet.frame.height))
        
        firstNameOutlet.leftView = paddingView
        firstNameOutlet.leftViewMode = .always
        
        fullName.text = "Marky Furqan"
        emailID.text = "nowsoftsq@gmail.com"
        userName.text = "447419941684"
        
    }
    
    
   
    @IBAction func navigationBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
   
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
       
        
    
    }
   
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
     
        
    }
    

    @IBAction func firstNameOnChange(_ sender: UITextField) {
        fullName.text = firstNameOutlet.text
    }
    
    
    
    @IBAction func lastName(_ sender: Any) {
    }
    
    
    @IBAction func checkButtonAction(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
    
    }
    
    @IBAction func saveButtonOnClick(_ sender: UIButton) {
        fullName.text = firstNameOutlet.text
        userName.text = lastNameOutlet.text
        
        //self.navigationController?.popViewController(animated: true)
        
        
    }
    
    
}

    
    
    
        
    
    
    
    
    


