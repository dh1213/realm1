//
//  page2ViewController.swift
//  realm1
//
//  Created by 土居浩規 on 2020/09/18.
//  Copyright © 2020 土居浩規. All rights reserved.
//

import UIKit
import RealmSwift
class page2ViewController:UIViewController,UITextFieldDelegate,UITableViewDelegate{
   
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
   
   
   override func viewDidLoad() {
       super.viewDidLoad()
       
       let realm = try! Realm()
    
    //realmファイルのrealmbrowserへの書き出し
    print(Realm.Configuration.defaultConfiguration.fileURL!)
    //
    let obj = realm.objects(page2.self)
       
       for objData in obj{
           label.text = objData.page2nakami
       }
            
       textField.delegate = self
   }
   
   func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       
       label.text = textField.text
       textField.resignFirstResponder()
      
       return true
   }
  
    @IBAction func saveButton(_ sender: Any) {
       let obj = page2()
       obj.page2nakami = textField.text
       label.text = obj.page2nakami
       
       let realm = try! Realm()
       try! realm.write {
           realm.add(obj)
       }
   }
}
