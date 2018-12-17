//
//  AnimalManager.swift
//  Animal
//
//  Created by fpm0259 on 2018/8/29.
//  Copyright © 2018年 fpm0259. All rights reserved.
//

import UIKit
import CoreData
class PersonManager: NSObject {
   static  let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    //增
  static  func add(_ name:String,age:String,hobby:String) {
        let person:PersonEntity = NSEntityDescription.insertNewObject(forEntityName: "PersonEntity", into: appDelegate.persistentContainer.viewContext) as! PersonEntity
       person.name = name
       person.age = age
       person.hobby = hobby
    
     //save
      appDelegate.saveContext()
        
    }
    
   //删
    static func delete(_ person:PersonEntity) {
    appDelegate.persistentContainer.viewContext.delete(person);
         appDelegate.saveContext()
    
    }
    
    
    
  //改
   static func update(){
       appDelegate.saveContext()
    }
    
    
    //查
  static func get()->Array<PersonEntity> {
    let request:NSFetchRequest<PersonEntity> = NSFetchRequest.init(entityName: "PersonEntity")
    var array:Array<PersonEntity> = Array.init()
   
    do{
        try  array = appDelegate.persistentContainer.viewContext.fetch(request)
    }catch{}
    
     return array

    }
    
    
    
    

}
