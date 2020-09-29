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
    
    @IBOutlet weak var pickerview: UIPickerView!
    @IBOutlet weak var sntksLbl: UILabel!
    //Realmインスタンス
    let realm = try! Realm()
    var ret: Results <TodoModel2>!

    //PickerViewの列数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    //PIckerViewの行数,リスト数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ret.count
    }

    // ドラムロールの各タイトル
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ret[row].todo2
    }

    //Pickeriewから選択された時のイベント
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.sntksLbl.text = ret[row].todo2
    }

    // 画面ロード時
    override func viewDidLoad() {
        super.viewDidLoad()

        // Delegate設定
        pickerview.delegate = self
        pickerview.dataSource = self

        sntksLbl.text = "初期値"

        //Realmインスタンス
        let realm = try! Realm()

        //事業所マスタより取得
        ret = realm.objects(TodoModel2.self)

    }
}
