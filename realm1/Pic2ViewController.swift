//
//  pic2ViewController.swift
//  realm1
//
//  Created by 土居浩規 on 2020/10/02.
//  Copyright © 2020 土居浩規. All rights reserved.
//

import UIKit
import RealmSwift

class Pic2ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let realm = try! Realm()
    //var list1: Results <TodoModel2>!
    var list1: Results <TodoModel2>!
    var list2: Results <kekka>!
    
    
    // ドラムロールの列数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    // ドラムロールの行数
    func pickerView(_ pickerView: UIPickerView,numberOfRowsInComponent component: Int) -> Int {
    switch component {
     case 0:
        return list1.count + (list2.first?.list3.count ?? 0)
     case 1:
        return list1.count + (list2.first?.list3.count ?? 0)
     default:
      return 0
        }
    }
    // ドラムロールの各タイトル
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            if row < list1.count {
            let data  = list1[row]
                return data.todo2
            }
            let data  = list2.first?.list3[row - list1.count]
            return data?.cametx
        case 1:
            if row < list1.count {
            let data  = list1[row]
                return data.todo2
            }
            let data  = list2.first?.list3[row - list1.count]
            return data?.cametx
            default:
            return nil
        }
    }
    
    // ドラムロール選択時
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            if row < list1.count {
                let data  = list1[row]
                label1.text = data.todo2

            } else if row < list1.count + list2.count {
                let data = list2[row - list1.count]
                label1.text = data.kekkaTitle
            }
        case 1:
            if row < list1.count {
                let data  = list1[row]
                label2.text = data.todo2

            } else if row < list1.count + list2.count {
                let data  = list2[row - list1.count]
                label2.text = data.kekkaTitle
            }
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    pickerView.delegate = self
    pickerView.dataSource = self
        //Realmインスタンス***追加***
    let realm = try! Realm()
    list1 = realm.objects(TodoModel2.self)
    list2 = realm.objects(kekka.self)
        //***
        //ピッカーの初期値
    pickerView.selectRow(0, inComponent: 0, animated: false)
    pickerView.selectRow(1, inComponent: 0, animated: false)
    
    }
    override func viewWillDisappear(_ animated: Bool) {

    let obj = pic2picnaiyou()
    obj.pic2no1 = label1.text
    obj.pic2no2 = label2.text
    let realm = try! Realm()
    try! realm.write {
        realm.add(obj)
       }
    }
    //***
  

    //***
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


