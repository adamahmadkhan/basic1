//
//  MoreData.swift
//  basic1
//
//  Created by Adam Khan on 11/28/23.
//

import UIKit

class MoreData: UIViewController {

    @IBOutlet weak var secondWayMainMessage: UILabel!
    @IBOutlet weak var secondWaySubjectOutlet: UILabel!
    @IBOutlet weak var secondWayDateLabelOutlet: UILabel!
    @IBOutlet weak var subjectLabelOutlet: UILabel!
    @IBOutlet weak var dateLabelOutlet: UILabel!
    public var recievedData = Tabledata()
    @IBOutlet weak var messageLabelOutlet: UILabel!
    public var fetchData = FetchData()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
       
        dateLabelOutlet.text = recievedData.dates
        messageLabelOutlet.text = recievedData.message 
        subjectLabelOutlet.text = recievedData.subject
        //print("HI \(FetchData.pointer)")
        // second way
        secondWayDateLabelOutlet.text = fetchData.data[FetchData.pointer].dates
        secondWaySubjectOutlet.text = fetchData.data[FetchData.pointer].subject
        secondWayMainMessage.text = fetchData.data[FetchData.pointer].message
        
        
        
        
        
    }

   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func homeViewButton(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
