//
//  picViewController.swift
//  realm1
//
//  Created by 土居浩規 on 2020/09/18.
//  Copyright © 2020 土居浩規. All rights reserved.
//

import UIKit
import RealmSwift

class PicViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var pickerview1: UIPickerView!
   
    @IBOutlet weak var sntksLbl: UILabel!
    //Realmインスタンス
    let realm = try! Realm()
    var ret: Results <TodoModel2>!
   // var ret2: Results <page2>!
    //PickerViewの列数
    func numberOfComponents(in pickerView1: UIPickerView) -> Int {
        return 1
    }
    
    //func numberOfComponents(in pickerView2: UIPickerView) -> Int {
   //     return 1
   // }
    //PIckerViewの行数,リスト数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ret.count
    }
  //  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
  //      return ret2.count
  //  }
    // ドラムロールの各タイトル
    func pickerView(_ pickerView1: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ret[row].todo2
    }

  //  func pickerView(_ pickerView2: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    //    return ret2[row].page2nakami
  //  }
    
    
    
    
    //Pickeriewから選択された時のイベント
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.sntksLbl.text = ret[row].todo2
    }

    // 画面ロード時
    override func viewDidLoad() {
        super.viewDidLoad()

        // Delegate設定
        pickerview1.delegate = self
        pickerview1.dataSource = self
     //   pickerview2.delegate = self
    //    pickerview2.dataSource = self
        
        sntksLbl.text = "初期値"

        //Realmインスタンス
        let realm = try! Realm()

        //realmviewcintrollerより取得
        ret = realm.objects(TodoModel2.self)
    //    ret2 = realm.objects(page2.self)

    }
}
