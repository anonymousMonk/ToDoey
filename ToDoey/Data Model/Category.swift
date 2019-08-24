//
//  Category.swift
//  ToDoey
//
//  Created by kyle on 8/21/19.
//  Copyright © 2019 Kyle DeHoff. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name : String = ""
    @objc dynamic var color : String?
    let items = List<Item>()
}
