//
//  TopUpScreenViewController.swift
//  basic1
//
//  Created by Adam Khan on 11/30/23.
//

import UIKit

class TopUpScreenViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    var prices : [String] = ["£2.5", "£5", "£10", "£15", "£20", "£25","£30"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionViewOutlet.register(UINib(nibName: "MyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
       
        
        // Do any additional setup after loading the view.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        prices.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        
        cell.priceLabelOutlet.text = prices[indexPath.row]
        
        /*
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "mycellxib") as! NewTableViewCell
        cell.imageOutlet.image = UIImage(named: "talkhome")
        cell.dateLabelOutlet?.text = obj[indexPath.row].dates
        cell.subjectLabelOutelet?.text = obj[indexPath.row].subject
        cell.messageLabelOutlet?.text = obj[indexPath.row].message
        return  cell */
        
        return cell
    }
    
    
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
        {
            let width  = (view.frame.width-40)/2
            return CGSize(width: width, height: width/2.0)
        }
    
    
    @IBAction func ContinueButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
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
