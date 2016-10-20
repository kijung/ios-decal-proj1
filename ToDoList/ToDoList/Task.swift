//
//  Task.swift
//  ToDoList
//
//  Created by Duck Yoon Kim on 10/18/16.
//  Copyright © 2016 Kijung Kim. All rights reserved.
//

import Foundation
class Task {
    var name: String?
    var description: String?
    var completed: Bool?
    init(n: String?, d: String?) {
        self.name = n;
        self.description = d;
    }
}
