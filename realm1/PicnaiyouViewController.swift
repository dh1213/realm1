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

    var labelText = "" //ここで値を受け取ります
    
    @IBOutlet var destinationLabel: UILabel!

    override func viewDidLoad() {
            super.viewDidLoad()
        }

        override func viewWillAppear(_ animated: Bool) {
            //Labelに書き込むならviewWillAppearなんかで行うといい具合かと
            super.viewWillAppear(animated)
            destinationLabel.text = labelText
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
//***pic2のこの部分消す
    

}
