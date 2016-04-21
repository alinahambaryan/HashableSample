//
//  User.swift
//  HashableSample
//
//  Created by Alina Hambaryan on 4/12/16.
//  Copyright © 2016 Alina Hambaryan. All rights reserved.
//

import Foundation

class User : Hashable {

    var uid: Int
    var name: String
    var hashValue: Int {
        return self.uid
    }
    init(uid: Int, name: String) {
        self.uid = uid
        self.name = name
    }
}

func ==(lhs: User, rhs: User) -> Bool {
    return lhs.uid == rhs.uid && lhs.name == rhs.name
}