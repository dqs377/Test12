//
//  AddViewController.swift
//  Test12
//
//  Created by fpm0259 on 2018/12/17.
//  Copyright © 2018年 fpm0259. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

 
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet var hobbyTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    var person:PersonEntity?
    override func viewDidLoad() {
        super.viewDidLoad()
        if person != nil {
          self.title = "修改";
          self.nameTextField.text  =  person?.name;
          self.ageTextField.text   = person?.age;
          self.hobbyTextField.text   = person?.hobby;
        }
       
    }
    
    @IBAction func SaveClick(_ sender: Any) {
        if self.nameTextField.text == nil{
            return;
        }
        if self.ageTextField.text == nil{
            return;
        }
        if self.hobbyTextField.text == nil{
            return;
        }
        if person != nil {
            person?.name = self.nameTextField.text;
            person?.age = self.ageTextField.text;
            person?.hobby = self.hobbyTextField.text;
            PersonManager.update();
        }else
        {
            PersonManager.add(self.nameTextField.text!, age: self.ageTextField.text!, hobby: self.hobbyTextField.text!);
            
        }
        
        self.navigationController?.popViewController(animated: true);
     
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
