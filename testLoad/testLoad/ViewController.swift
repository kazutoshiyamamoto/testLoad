//
//  ViewController.swift
//  testLoad
//
//  Created by home on 2018/04/21.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //        // 削除
        //        let realm = try! Realm()
        //
        //        if let firstPerson = realm.objects(Person.self).first {
        //            try! realm.write() {
        //                realm.delete(firstPerson)
        //            }
        //        }
        
        //        //マイグレーション
        //        var config = Realm.Configuration()
        //        config.deleteRealmIfMigrationNeeded = true
        //        _ = try! Realm(configuration: config)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // レコードへの書き込み
    @IBAction func testWrite(_ sender: Any) {
        
        let realm = try! Realm()
        
        let testPerson = Person()
        testPerson.name = "後藤"
        testPerson.age = 22
        testPerson.height = 180
        
        try! realm.write() {
            realm.add(testPerson)
        }
    }
    
    // レコードを全件取得
    @IBAction func testLoad(_ sender: Any) {
        let realm = try! Realm()
        let testPersons = realm.objects(Person.self)
        print(testPersons)
    }
}

