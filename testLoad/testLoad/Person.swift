//
//  Person.swift
//  testLoad
//
//  Created by home on 2018/04/21.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit
import RealmSwift

class Person: Object {
    // オブジェクトの生成
    @objc dynamic var name = ""
    @objc dynamic var age = 0
    @objc dynamic var height = 0
}
