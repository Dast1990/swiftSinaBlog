//
//  YLMainTabBarVC.swift
//  SwiftSinaBlog0615
//
//  Created by LongMa on 16/6/16.
//  Copyright © 2016年 HT. All rights reserved.
//

import UIKit

class YLMainTabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //VC参数是对象，不是类！所以YLHomeViewController后要加（）
        //!!!:  调用自己方法时，可以省去 self.
        addChildVC("主页", imgName: "tabbar_home", VC: YLHomeViewController())
        addChildVC("消息", imgName: "tabbar_message_center",  VC: YLMessageViewController())
        addChildVC("发现", imgName:"tabbar_discover",  VC: YLDiscoverViewController())
        addChildVC("我", imgName: "tabbar_profile", VC: YLProfileViewController())
    }
    
    private func addChildVC(title: String, imgName: String,  VC: UIViewController){
        //        不直接传控制器时，如果传控制器名称，需要如下转换
        //        let  jLVC  = NSClassFromString(VCName) as! UIViewController.Type
        //        let lVC = jLVC.init()//控制器初始化，必须是 .init()
        
        VC.title = title
        VC.tabBarItem.image = UIImage(named: imgName)
        
        
        VC.tabBarItem.selectedImage = UIImage(named: imgName + "_highlighted")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        VC.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.redColor()], forState: UIControlState.Highlighted)
        
        self.addChildViewController(UINavigationController(rootViewController: VC))
    }
    
}
