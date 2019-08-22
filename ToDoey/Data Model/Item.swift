//
//  Item.swift
//  ToDoey
//
//  Created by kyle on 8/21/19.
//  Copyright © 2019 Kyle DeHoff. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
