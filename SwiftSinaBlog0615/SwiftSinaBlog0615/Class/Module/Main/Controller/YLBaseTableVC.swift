//
//  YLBaseTableVC.swift
//  SwiftSinaBlog0615
//
//  Created by LongMa on 16/6/18.
//  Copyright © 2016年 HT. All rights reserved.
//

import UIKit
import SnapKit

class YLBaseTableVC: UITableViewController {
    
    let  loginStatues = NSUserDefaults.standardUserDefaults().boolForKey("isLoginIn")
    
    override func loadView() {
        loginStatues == false ? setVisitorView() : super.loadView()
    }
    
    private func setVisitorView(){
        self.view = YLVisitorView();
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}
