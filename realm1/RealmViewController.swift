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
//page1-picview--pickerview1
class TodoModel2: Object{
    @objc dynamic var todo2: String? = nil
}
class Cat: Object {
  @objc dynamic var name = ""
  @objc dynamic var age = 0
}

class RealmStudent: Object {
    dynamic var id : Int = 0;
    dynamic var name = "";
    dynamic var age: Int = 0;
}

class Task: Object {
    @objc dynamic var taskTitle: String = ""
    //Listの定義
    let tickets = List<Ticket>()
}

class Ticket: Object {
    @objc dynamic var ticketTitle: String = ""
}
