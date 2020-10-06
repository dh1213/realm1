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
    var list1: Results <TodoModel2>!
    var list2: Results <TodoModel2>!
    
//    let list1:[String] = ["1","2","3","4","5","6","7"]
//    let list2:[String] = ["いち","に","さん","よん","ご",]
    // ドラムロールの列数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    // ドラムロールの行数
    func pickerView(_ pickerView: UIPickerView,numberOfRowsInComponent component: Int) -> Int {
    switch component {
     case 0:
      return list1.count
     case 1:
      return list2.count
     default:
      return 0
        }
    }
    // ドラムロールの各タイトル
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return list1[row].todo2
        case 1:
            return list2[row].todo2
        default:
            return "error"
        }
    }
    
    // ドラムロール選択時
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        
        case 0:
            label1.text = list1[row].todo2
        case 1:
            label2.text = list2[row].todo2
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
    list2 = realm.objects(TodoModel2.self)
        //***
        //ピッカーの初期値
    pickerView.selectRow(0, inComponent: 0, animated: false)
    pickerView.selectRow(1, inComponent: 1, animated: false)
    
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
  //  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            //画面遷移時に呼ばれます。ここでは直接Labelのtextに値を渡すのではなく
            //DestinationViewControllerのメンバに値を渡します。
            //ここでpickerViewで選択したrowを渡したほうが変な挙動になりにくいという私見があるので
            //こちらを採用しています。
    //        let selectedRow = pickerView.selectedRow(inComponent: 0)

   //         if let destination = segue.destination as? PicnaiyouViewController {
   //             destination.labelText = list1[selectedRow]
    //       } else {
   //             fatalError()
   //         }

  //      }

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


