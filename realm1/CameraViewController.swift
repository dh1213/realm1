//
//  CameraViewController.swift
//  realm1
//
//  Created by 土居浩規 on 2020/10/02.
//  Copyright © 2020 土居浩規. All rights reserved.
//

import UIKit
import RealmSwift

class CameraViewController: UIViewController ,UINavigationControllerDelegate,UITextFieldDelegate,UIImagePickerControllerDelegate{
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    //***
    
    //***
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let realm = try! Realm()
        //
        let results = realm.objects(kekka.self)

        if let list = results.first?.list3 {
            textField1.text = list[0].cametx
            textField2.text = list[1].cametx
            textField3.text = list[2].cametx
            textField4.text = list[3].cametx
        }
        
        textField1.delegate = self
        textField2.delegate = self
        textField3.delegate = self
        textField4.delegate = self
                       
    }
        //***＜画面遷移で文字を保存
    override func viewWillDisappear(_ animated: Bool) {
    //***<
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        let dictionary: [String: Any] = [
            "kekkaTitle": "",
            "list3": [
                ["cametx": textField1.text],
                ["cametx": textField2.text],
                ["cametx": textField3.text],
                ["cametx": textField4.text]
            ]
        ]
         //Taskモデルのインスタンスの作成
        let task = kekka(value: dictionary)
            //書き込み処理
        let realm = try! Realm()
            try! realm.write {
                realm.add(task, update: .all)
                    }
        
        }
            
    var tapNum: Int = 0
        
    @IBOutlet weak var Picimage1: UIImageView!
    @IBAction func camerab1(_ sender: Any) {
    
        tapNum = 0
       if UIImagePickerController.isSourceTypeAvailable(.camera){
    print("カメラは利用できます")
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .camera
        imagePickerController.delegate = self
        present(imagePickerController,animated: true,completion: nil)
        
    }else{
    print("カメラは利用できません")
    }
}
    
    @IBOutlet weak var Picimage2: UIImageView!
    @IBAction func camerab2(_ sender: Any) {
        
        tapNum = 1
           if UIImagePickerController.isSourceTypeAvailable(.camera){
        print("カメラは利用できます")
            let imagePickerController = UIImagePickerController()
            imagePickerController.sourceType = .camera
            imagePickerController.delegate = self
            present(imagePickerController,animated: true,completion: nil)
            
        }else{
        print("カメラは利用できません")
        }
    }
       
    
    @IBOutlet weak var Picimage3: UIImageView!
    @IBAction func camerab3(_ sender: Any) {
    
        tapNum = 2
           if UIImagePickerController.isSourceTypeAvailable(.camera){
        print("カメラは利用できます")
            let imagePickerController = UIImagePickerController()
            imagePickerController.sourceType = .camera
            imagePickerController.delegate = self
            present(imagePickerController,animated: true,completion: nil)
            
        }else{
        print("カメラは利用できません")
        }
    }
    @IBOutlet weak var Picimage4: UIImageView!
    @IBAction func camerab4(_ sender: Any) {
   
        tapNum = 3
           if UIImagePickerController.isSourceTypeAvailable(.camera){
        print("カメラは利用できます")
            let imagePickerController = UIImagePickerController()
            imagePickerController.sourceType = .camera
            imagePickerController.delegate = self
            present(imagePickerController,animated: true,completion: nil)
            
        }else{
        print("カメラは利用できません")
        }
    }
    
    /// シャッターボタンを押下した際、確認メニューに切り替わる
    /// - Parameters:
    ///   - picker: ピッカー
    ///   - info: 写真情報
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo
      info: [UIImagePickerController.InfoKey : Any]) {
    
      if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
          switch tapNum {
              case 0:
                  Picimage1.image = image
              case 1:
                  Picimage2.image = image
              case 2:
                  Picimage3.image = image
              case 3:
                  Picimage4.image = image
            default:
                        break
                }
            }
            dismiss(animated: true, completion: nil)
                }
            }

