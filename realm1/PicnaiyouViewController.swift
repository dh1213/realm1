//
//  PicnaiyouViewController.swift
//  realm1
//
//  Created by 土居浩規 on 2020/10/03.
//  Copyright © 2020 土居浩規. All rights reserved.
//
import UIKit
import RealmSwift

class PicnaiyouViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
           
    let realm = try! Realm()
    let obj = realm.objects(pic2picnaiyou.self)
           
    for objData in obj{
    label1.text = objData.pic2no1
    }
    for objData in obj{
    label2.text = objData.pic2no2
    }
    
}
   

}
