//
//  whatsNewViewController.swift
//  basic1
//
//  Created by Adam Khan on 11/24/23.
//

import UIKit

class whatsNewViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    /*
    public var dates:[String] = ["7 April,2023","30 March,2023"]
    
    public var subject: [String] = ["#Go beyond - Bringing 5G To Talk Home","No annual Price hacks on Talk home","This is temp message"]
    
    public var message: [String] = ["We're excited to share that 5G connectivity is now available to all Talk Home Custimers at no additional Cost", "Worried about the mid-contract price hikes from the big 4g world? Talk home is now offering free 4G calls"]
    */
    
    var obj = [Tabledata]()
    @IBOutlet weak var tableViewOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableViewOutlet.register(UINib(nibName: "NewTableViewCell", bundle: nil), forCellReuseIdentifier: "mycellxib")
    }
    
    
    
    @IBAction func navigationBackButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        
        
        obj.append(Tabledata(dates: "7 April,2023", subject: "#Go beyond - Bringing 5G To Talk Home", message: "We're excited to share that 5G connectivity is now available to all Talk Home Custimers at no additional Cost"))
        
        obj.append(Tabledata(dates: "30 March,2023", subject: "No annual Price hikes on Talk Home", message: "Worried about the mid-contract price hikes from the big 4g world? \n Talk home is now offering free 4G calls"))
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return obj.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "mycellxib") as! NewTableViewCell
        cell.imageOutlet.image = UIImage(named: "talkhome")
        cell.dateLabelOutlet?.text = obj[indexPath.row].dates
        cell.subjectLabelOutelet?.text = obj[indexPath.row].subject
        cell.messageLabelOutlet?.text = obj[indexPath.row].message
        return  cell
        
    }
    
    /*
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "cell")
        
        cell.backgroundColor = UIColor(ciColor: CIColor(red: 240/255, green: 240/255, blue: 240/255))
        
        cell.imageView?.image = UIImage(named: "talkhome")
        cell.textLabel?.text = obj[indexPath.row].dates
        cell.textLabel?.font = UIFont.systemFont(ofSize: 10)
        cell.detailTextLabel?.text = obj[indexPath.row].message
        cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.semibold)
        return cell
    }
    
    
    */
        /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "moreDataPageID"
        {
            if let MoreDataReceiver = segue.destination as? MoreData{
                if let sendData = sender as? Tabledata {
                    MoreDataReceiver.recievedData.message =  sendData.message
                    MoreDataReceiver.recievedData.dates = sendData.dates
                    MoreDataReceiver.recievedData.subject = sendData.subject
                }
            }
            
            
        }
        
        
    }
    */
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        FetchData.pointer = indexPath.row
        
        
        Singleton.transferData = obj[indexPath.row]
        
        let moreController = self.storyboard?.instantiateViewController(identifier: "moreDataPageID") as! MoreData
        moreController.recievedData = obj[indexPath.row]
        self.navigationController?.pushViewController(moreController, animated: true)
        
        
        
        
        /*
        
        let sendData = obj[indexPath.row]
        FetchData.pointer = indexPath.row
        performSegue(withIdentifier: "moreDataPageID", sender: sendData) */
    }
     
    
    
}
