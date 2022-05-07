//
//  Member.swift
//  arginin
//
//  Created by Beomkim on 2022/05/03.
//

import Foundation

struct Member: Codable {
    var email: String
    var id :Int
    var name: String
    
    init(email:String, id:Int, name:String) {
        self.email = email
        self.id = id
        self.name = name
    }
}
