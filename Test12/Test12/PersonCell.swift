//
//  PersonCell.swift
//  Test12
//
//  Created by fpm0259 on 2018/12/17.
//  Copyright © 2018年 fpm0259. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {




    var _person:PersonEntity?
    var person: PersonEntity? {
        get {
            return _person;
        }
        set {
            _person = newValue;
            self.nameLab.text = String.init(format: "名字:%@", _person?.name ?? "  ");
            self.ageLab.text = String.init(format: "年龄:%@", _person?.age ?? "--");
            self.hobbyLab.text = String.init(format:"爱好:%@", _person?.hobby ?? "--");
        }
    }
        
     var nameLab:UILabel = UILabel.init();
     var ageLab:UILabel = UILabel.init();
     var hobbyLab:UILabel = UILabel.init();
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
       super.init(style: style, reuseIdentifier: reuseIdentifier);

            self.nameLab.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 30);
            self.nameLab.textAlignment = .center;
            self.contentView.addSubview(self.nameLab);

            self.ageLab.frame = CGRect.init(x: 0, y: 30, width:UIScreen.main.bounds.size.width/2.0, height: 30);
            self.ageLab.textAlignment = .center;
            self.contentView.addSubview(self.ageLab);

            self.hobbyLab.frame = CGRect.init(x:UIScreen.main.bounds.size.width/2.0 , y: 30, width: UIScreen.main.bounds.size.width/2.0, height: 30);
            self.hobbyLab.textAlignment = .center;
            self.contentView.addSubview(self.hobbyLab);



    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
