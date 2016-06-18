//
//  YLVisitorView.swift
//  SwiftSinaBlog0615
//
//  Created by LongMa on 16/6/18.
//  Copyright © 2016年 HT. All rights reserved.
//

import UIKit

class YLVisitorView: UIView {
    
    ///swift默认所有的view都能通过xib/storyboard创建，其实纯代码这个方法啥都没做，但是必须有。
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        
        //super要在 设置普通存储型属性 的下面；同时在 准备UI的上面。
        super.init(frame: frame)
        backgroundColor = UIColor.brownColor()
        
        prepareUI()
    }
    
    ///准备UI：1.添加子控件（注意添加顺序） 2.设置约束
    private func prepareUI(){
        
        addSubview(iconV)
        addSubview(homeV)
        addSubview(textLbl)
        addSubview(rgsterBtn)
        addSubview(loginBtn)
        
        
        iconV.translatesAutoresizingMaskIntoConstraints =  false;
        
        //        iconV.addConstraint(NSLayoutConstraint.constraintsWithVisualFormat(<#T##format: String##String#>, options: <#T##NSLayoutFormatOptions#>, metrics: <#T##[String : AnyObject]?#>, views: <#T##[String : AnyObject]#>))
        //        iconV.addConstraint(NSLayoutConstraint(item: <#T##AnyObject#>, attribute: <#T##NSLayoutAttribute#>, relatedBy: <#T##NSLayoutRelation#>, toItem: <#T##AnyObject?#>, attribute: <#T##NSLayoutAttribute#>, multiplier: <#T##CGFloat#>, constant: <#T##CGFloat#>))
    }
    
    //MARK: - lazy
    ///转轮
    private lazy var iconV : UIImageView = UIImageView(image: UIImage.init(named:"visitordiscover_feed_image_smallicon"))
    
    ///小房子
    private lazy var homeV : UIImageView = UIImageView(image: UIImage(named: "visitordiscover_feed_image_house"))
    
    ///文本
    private lazy var textLbl : UILabel = {
        let lbl = UILabel()
        //        lbl.font = ui
        lbl.text = "惊喜惊喜惊喜惊喜惊喜惊喜惊喜惊喜惊喜惊喜"
        lbl.sizeToFit()
        
        return lbl;
    }()
    
    
    ///注册按钮
    private lazy var rgsterBtn : UIButton = {
        let  btn = UIButton()
        btn.setTitle("注册", forState: UIControlState.Normal)
        btn.setTitleColor(UIColor.orangeColor(), forState: UIControlState.Normal)
        btn.titleLabel?.font = UIFont.systemFontOfSize(14)
        btn.setBackgroundImage(UIImage(named: "common_button_white_disable"), forState: UIControlState.Normal)
        btn.sizeToFit()
        
        return btn
    }()
    
    //登陆按钮
    //TODO: 抽取按钮创建方法到分类。
    private lazy var loginBtn : UIButton = {
        let btn = UIButton()
        
        btn.setTitle("登陆", forState: UIControlState.Normal)
        btn.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btn.titleLabel?.font = UIFont.systemFontOfSize(14)
        btn.setBackgroundImage(UIImage(named: "common_button_white_disable"), forState: UIControlState.Normal)
        btn.sizeToFit()
        
        return btn
    }()
    
}









