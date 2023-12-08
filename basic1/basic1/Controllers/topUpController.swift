//
//  topUpController.swift
//  basic1
//
//  Created by Adam Khan on 11/24/23.
//

import UIKit

class topUpController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func goBackButton(_ sender: Any) {
        
            self.navigationController?.popViewController(animated: true)
        
    }
    
    
}
