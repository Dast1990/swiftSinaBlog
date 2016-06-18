//
//  YLDiscoverViewController.swift
//

import UIKit

class YLDiscoverViewController: UIViewController {
    let  loginStatues = NSUserDefaults.standardUserDefaults().boolForKey("isLoginIn")
    
    override func loadView() {
        loginStatues == false ? setVisitorView() : super.loadView()
    }
    
    private func setVisitorView(){
        let vstV = UIView()
        vstV.backgroundColor = UIColor .yellowColor()
        self.view = vstV;
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
}