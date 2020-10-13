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
        let obj = realm.objects(cameratext.self)
           
           for objData in obj{
            textField1.text = objData.cametx
            textField2.text = objData.cametx
            textField3.text = objData.cametx
            textField4.text = objData.cametx
        // Do any additional setup after loading the view.
    }
        
        textField1.delegate = self
        textField2.delegate = self
        textField3.delegate = self
        textField4.delegate = self
                       
    }
        //***＜画面遷移で文字を保存
    override func viewWillDisappear(_ animated: Bool) {

    let realm = try! Realm()
        let dictionary: [String: Any] = [
            "kekkaTitle": "",
            "list3": [
                ["cametx": textField1.text],
                ["cametx": textField2.text],
                ["cametx": textField3.text],
                ["cametx": textField4.text]
            ]
        ]

            let task = kekka(value: dictionary) //Taskモデルのインスタンスの作成

            //書き込み処理
            try! realm.write {
                realm.add(task)
                    }
        }
        
  //  let obj = cameratext()
  //  obj.cametx = textField1.text
  //  obj.cametx = textField2.text
  //  obj.cametx = textField3.text
  //  obj.cametx = textField4.text
  //  let realm = try! Realm()
  // try! realm.write {
  //  realm.add(obj)
  //      }
      
   // }
    //***＞画面遷移で画像を保存
    
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

