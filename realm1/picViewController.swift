//
//  picViewController.swift
//  realm1
//
//  Created by 土居浩規 on 2020/09/18.
//  Copyright © 2020 土居浩規. All rights reserved.
//

import UIKit
import RealmSwift

class picViewController: UIViewController {
    func save() {
        do {
            //インスタンスの取得
            let realm = try Realm()
            let dictionary: [String: Any] =
                ["taskTitle": "夏休みの宿題",
                 "tickets": [["ticketTitle": "算数"],
                             ["ticketTitle": "英語"],
                             ["ticketTitle": "社会"]]
                ]
            let task = Task(value: dictionary) //Taskモデルのインスタンスの作成
            //書き込み処理
            try! realm.write {
                realm.add(task)
                print(task)
            }
        }
        catch {
            print(error)
        }
    }
}





