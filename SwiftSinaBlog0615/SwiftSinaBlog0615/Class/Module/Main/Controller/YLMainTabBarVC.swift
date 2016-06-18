//
//  YLMainTabBarVC.swift
//  SwiftSinaBlog0615
//
//  Created by LongMa on 16/6/16.
//  Copyright © 2016年 HT. All rights reserved.
//

import UIKit

class YLMainTabBarVC: UITabBarController {
    
    func centerBtnDidClick(btn : UIButton) {
        //???: 没有双引号！
        print(__FUNCTION__)
        print(btn)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //VC参数是对象，不是类！所以YLHomeViewController后要加（）
        //!!!:  调用自己方法时，可以省去 self.
        addChildVC("主页", imgName: "tabbar_home", VC: YLHomeViewController())
        addChildVC("消息", imgName: "tabbar_message_center",  VC: YLMessageViewController())
        
        //中间添加站位控制器，是最简单且适合读屏的方法；然后在tabbar中间添加一个按钮覆盖上去即可。
        //不添加图片名会在控制台报警告
        addChildVC("发状态", imgName: "tabbar_home", VC: UIViewController())
        addChildVC("发现", imgName:"tabbar_discover",  VC: YLDiscoverViewController())
        addChildVC("我", imgName: "tabbar_profile", VC: YLProfileViewController())
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //添加中间的遮盖按钮
        self.tabBar.addSubview(self.centerBtn)
    }
    
    private func addChildVC(title: String, imgName: String,  VC: UIViewController){
        //        不直接传控制器时，如果传控制器名称，需要如下转换
        //        let  jLVC  = NSClassFromString(VCName) as! UIViewController.Type
        //        let lVC = jLVC.init()//控制器初始化，必须是 .init()
        
        VC.title = title
        VC.tabBarItem.image = UIImage(named: imgName)
        
        
        VC.tabBarItem.selectedImage = UIImage(named: imgName + "_highlighted")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        VC.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.redColor()], forState: UIControlState.Selected)
        
        self.addChildViewController(UINavigationController(rootViewController: VC))
    }
    
    //MARK: - lazy, 1.MARK必须时大写；2. - 前后必须有空格。
    lazy var centerBtn : UIButton = {
        let btn = UIButton()
        let width = UIScreen.mainScreen().bounds.width / 5;
        
        //中间按钮宽度略宽，防点到下面中间系统tabbarItem。最好的方法还是自定义tabbar，那样图片和文字的位置随便设置！
        btn.frame = CGRectMake(width * 2 - 2, 0, width + 4, self.tabBar.bounds.height)
        
        btn.setBackgroundImage(UIImage.init(named: "tabbar_compose_button"), forState: UIControlState.Normal)
        btn.setBackgroundImage(UIImage.init(named:"tabbar_compose_button_highlighted"), forState: UIControlState.Highlighted)
        btn.setImage(UIImage.init(named: "tabbar_compose_icon_add"), forState: UIControlState.Normal)
        btn.setImage(UIImage.init(named: "tabbar_compose_icon_add_highlighted"), forState: UIControlState.Highlighted)
        
        btn.addTarget(self, action: "centerBtnDidClick:", forControlEvents: UIControlEvents.TouchUpInside)
        
        btn.isAccessibilityElement = false;
        
        return btn;
    }()
    
    
}
