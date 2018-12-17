//
//  ViewController.swift
//  Test12
//
//  Created by fpm0259 on 2018/12/17.
//  Copyright © 2018年 fpm0259. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    

    let table:UITableView = UITableView.init();
    var datas:[PersonEntity] = [PersonEntity]();
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "列表";
        
        
        self.table.frame = self.view.bounds;
        self.table.rowHeight = 80;
        self.table.delegate = self;
        self.table.dataSource = self;
        self.view.addSubview(self.table);
        table.register(PersonCell.self, forCellReuseIdentifier: "PersonCell");
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        self.datas = PersonManager.get();
        self.table.reloadData();
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.datas.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person:PersonEntity = self.datas[indexPath.row];
        let cell:PersonCell = table.dequeueReusableCell(withIdentifier: "PersonCell") as! PersonCell;
        cell.person = person;
        return cell;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let person:PersonEntity = self.datas[indexPath.row];
        let story:UIStoryboard = UIStoryboard.init(name: "Main", bundle: nil);
        let vc:AddViewController = story.instantiateViewController(withIdentifier: "AddViewController") as! AddViewController;
        vc.person = person;
        self.navigationController?.pushViewController(vc, animated: true);
        
        
        
    }

}

