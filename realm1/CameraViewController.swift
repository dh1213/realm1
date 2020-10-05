//
//  CameraViewController.swift
//  realm1
//
//  Created by 土居浩規 on 2020/10/02.
//  Copyright © 2020 土居浩規. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController ,UINavigationControllerDelegate,UIImagePickerControllerDelegate{
   
    var tapNum: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
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
    
    
