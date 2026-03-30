//
//  mainView.swift
//  wb
//
//  Created by yling on 2026/3/30.
//

import UIKit

import Foundation

class MainViewController : UITabBarController {
    override func viewDidLoad(){
        super .viewDidLoad()
        
        addChildViewController(childVcName:"HomeViewController", title: "首页", imageName: "tabbar_home")
        addChildViewController(childVcName:"MessageViewController", title: "消息", imageName: "tabbar_message")
        addChildViewController(childVcName:"DiscoverViewController", title: "发现", imageName: "tabbar_discover")
        addChildViewController(childVcName:"ProfileViewController", title: "我的", imageName: "tabbar_profile")
    }
    
    private func addChildViewController(childVcName: String, title: String, imageName: String) {
        // 获取命名空间
        guard let nameSpace = Bundle.main.infoDictionary?["CFBundleExecutable"] as?
                String else {
            print("没有获取命名空间")
            return
        }
        
        //根据字符串获取对应的class
        guard let ChildVcClass = NSClassFromString(nameSpace + "."+childVcName) else {
            print("没有获取到字符串对应的Class")
            return
        }
        
        //将对应的AnyObject转换成控制器的类型
        guard let childVcType = ChildVcClass as?UIViewController.Type else {
            print("没有获取对应控制器的类型")
            return
        }
        
        // 创建对应的控制器对象
        let childVc = childVcType.init()
        
        // 设置子控制器的属性
        childVc.title = title
        childVc.tabBarItem.image = UIImage(named: imageName)
        childVc.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        
        // 包装导航栏控制器
        let childNav = UINavigationController(rootViewController: childVc)
        
        // 添加控制器
        addChild(childNav)
        
    }
}
