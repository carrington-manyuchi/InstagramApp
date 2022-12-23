//
//  UserData.swift
//  InstangramAPP
//
//  Created by Carrington Tafadzwa Manyuchi on 2022/12/22.
//

import Foundation
import UIKit

struct User {
    
    var name: String
    
    var profileImage: UIImage
    
}

class UsersModel {
    
    var users: [User] = [User]()
    
    init() {
        
        let user1 = User(name: "John Carmack", profileImage: UIImage(named: "user1")!)
        
        users.append(user1)
        
        let user2 = User(name: "Bjarne Stroustrup", profileImage: UIImage(named: "user2")!)
        
        users.append(user2)
        
    }
    
    
}
