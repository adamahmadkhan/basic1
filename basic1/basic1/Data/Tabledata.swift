//
//  Tabledata.swift
//  basic1
//
//  Created by Adam Khan on 11/28/23.
//

import Foundation

class Tabledata {
    
    
    var dates:String
    
    var subject:String
    
    var message:String
    
    init() {
        self.dates = ""
        self.message = ""
        self.subject = ""
    }
    
    init(dates: String, subject: String, message: String) {
        self.dates = dates
        self.subject = subject
        self.message = message
    }
    
}
