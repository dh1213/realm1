//
//  pickerViewController.swift
//  realm1
//
//  Created by 土居浩規 on 2020/09/18.
//  Copyright © 2020 土居浩規. All rights reserved.
//

import UIKit
import RealmSwift
 
class PickerViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
    
        
        
           let dataList = [
       "あ","い","う","え",
       "お","か","き","く",
       "け","こ","さ","し",
      "す","せ"
   ]
    
    
   
    
    
    // UIPickerViewの列の数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // UIPickerViewの行数、リストの数
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return dataList.count
    }
    
    // UIPickerViewの最初の表示
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        
        return dataList[row]
    }
    
    // UIPickerViewのRowが選択された時の挙動
    func pickerView(_ pickerView: UIPickerView,
                    didSelectRow row: Int,
                    inComponent component: Int) {
        
          
        
        
        
        label.text = dataList[row]
    }
    
}
