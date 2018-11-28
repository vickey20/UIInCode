//
//  Contact.swift
//  UIInCode
//
//  Created by Vikram Gupta on 11/26/18.
//  Copyright © 2018 Vikram Gupta. All rights reserved.
//

import Foundation

struct Contact {
    let name: String?
    let email: String?
    let phone: String?
    
    init(name: String?, email: String?, phone: String?) {
        self.name = name
        self.email = email
        self.phone = phone
    }
}
