//
//  page1hyoujiViewController.swift
//  realm1
//
//  Created by 土居浩規 on 2020/09/24.
//  Copyright © 2020 土居浩規. All rights reserved.
//

import UIKit
import RealmSwift

class Page1hyoujiViewController: UIViewController,UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource{

    // セルの内容を返すメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {let testCell2:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "testCell2")!
        let item: TodoModel2 = self.itemList2[(indexPath as NSIndexPath).row]
        testCell2.textLabel?.text = item.todo2
        return testCell2}
    // セルの行数を返すメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.itemList2.count
        
    }
    @IBOutlet weak var todoTableView2: UITableView!
    
    var itemList2: Results<TodoModel2>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // UITableViewDataSource を self に設定
        self.todoTableView2.dataSource = self
        // UITableViewDelegate を self に設定
        self.todoTableView2.delegate = self

        
        let realmInstance = try! Realm()
        self.itemList2 =
            realmInstance.objects(TodoModel2.self)
        self.todoTableView2.reloadData()
    }
}
    
