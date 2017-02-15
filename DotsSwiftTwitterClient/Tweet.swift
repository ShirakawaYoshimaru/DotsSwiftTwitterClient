//
//  Twitter.swift
//  DotsSwiftTwitterClient
//
//  Created by 田中賢治 on 2017/02/15.
//  Copyright © 2017年 田中賢治. All rights reserved.
//

import Foundation

struct Tweet {
    
    let id: String
    let text: String
    let user: User?
    
    init?(json: Any) {
        
        guard let dictionary = json as? [String: Any] else { return nil }
        
        guard let id = dictionary["id_str"] as? String else { return nil }
        guard let text = dictionary["text"] as? String else { return nil }
        guard let user = dictionary["user"] else { return nil }
        
        self.id = id
        self.text = text
        self.user = User(json: user)
    }
    
}
