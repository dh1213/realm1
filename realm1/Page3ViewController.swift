//
//  Page3ViewController.swift
//  realm1
//
//  Created by 土居浩規 on 2020/09/29.
//  Copyright © 2020 土居浩規. All rights reserved.
//

import UIKit
import RealmSwift
class Page3ViewController: UIViewController,UITextFieldDelegate,UITableViewDelegate{

    @IBOutlet weak var textField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let realm = try! Realm()
     
     //realmファイルのrealmbrowserへの書き出し
     print(Realm.Configuration.defaultConfiguration.fileURL!)
     //
     let obj = realm.objects(page3.self)
        
        for objData in obj{
            textField.text = objData.page3nakami
    // Do any additional setup after loading the view.
    }
    //これがないと再表示できないclassにUITextFieldDelegateが必要
        textField.delegate = self
        /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //labelpage3.text = textField.text
        textField.resignFirstResponder()
       
        return true
    }
    
    override func viewWillDisappear(_ animated: Bool) {

    let obj = page3()
       obj.page3nakami = textField.text
       //labelpage3.text = obj.page3nakami
       
       let realm = try! Realm()
       try! realm.write {
           realm.add(obj)
       }
    }
    }
