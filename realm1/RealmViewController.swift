//
//  RealmViewController.swift
//  realm1
//
//  Created by 土居浩規 on 2020/09/16.
//  Copyright © 2020 土居浩規. All rights reserved.
//

//import UIKit
//import RealmSwift
//import Foundation
 
//class Memo: Object {
 
//    @objc dynamic var memo: String? = nil
        
//}

import Foundation
import RealmSwift

//viewcontrollerswift
class TodoModel: Object{
    @objc dynamic var todo: String? = nil
}
class page1: Object{
    @objc dynamic var page1nakami: String? = nil
}

//page2-picview-pickerview2
class page2: Object{
    @objc dynamic var page2nakami: String? = nil
}
class page3: Object{
    @objc dynamic var page3nakami: String? = nil
}
class Obj: Object{
   
   @objc dynamic var name: String?
}
//page1-picview--pickerview1--<原理>
class TodoModel2: Object{
    @objc dynamic var todo2: String? = nil
}
class pic2picnaiyou: Object{
    @objc dynamic var pic2no1: String? = nil
    @objc dynamic var pic2no2: String? = nil
}
//cameraview--＜結果＞
class kekka: Object {
    @objc dynamic var kekkaTitle: String = ""
    //Listの定義
    var list3 = List<cameratext>()

    override static func primaryKey() -> String? {
        return "kekkaTitle"
    }
}
class cameratext: Object{
    @objc dynamic var cametx: String = ""
}
