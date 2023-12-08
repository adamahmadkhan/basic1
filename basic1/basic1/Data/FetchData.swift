//
//  FetchData.swift
//  basic1
//
//  Created by Adam Khan on 11/28/23.
//

import Foundation

class FetchData{
    
    static var pointer = 0
    
    var data = [Tabledata]()
    init() {
        data.append(Tabledata(dates: "7 April,2023", subject: "#Go beyond - Bringing 5G To Talk Home", message: "We're excited to share that 5G connectivity is now available to all Talk Home Custimers at no additional Cost"))
        
        data.append(Tabledata(dates: "30 March,2023", subject: "No annual Price hikes on Talk Home", message: "Worried about the mid-contract price hikes from the big 4g world? \n Talk home is now offering free 4G calls"))
    }
}
