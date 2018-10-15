//
//  BDViewController.swift
//  ByteDanceDemo
//
//  Created by donglingxiao on 2018/10/15.
//  Copyright © 2018年 donglingxiao. All rights reserved.
//

import UIKit

class BDTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildViewControllers()
        
    }

    private func addChildViewControllers() {
        addChildViewController(childController: BDHomeViewController(), title: "首页", imageName: "home_tabbar_32x32_", selectedImageName: "home_tabbar_press_32x32_")
        
        addChildViewController(childController: BDVideoViewController(), title: "西瓜视频", imageName: "video_tabbar_32x32_", selectedImageName: "video_tabbar_press_32x32_")
        
        addChildViewController(childController: BDSmallTopicsViewController(), title: "微头条", imageName: "video_tabbar_32x32_", selectedImageName: "video_tabbar_press_32x32_")
        
        addChildViewController(childController: BDShorterVideoViewController(), title: "小视频", imageName: "video_tabbar_32x32_", selectedImageName: "video_tabbar_press_32x32_")
        
    }
    
    private func addChildViewController(childController: UIViewController, title: String, imageName: String, selectedImageName: String){
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: selectedImageName)
        childController.tabBarItem.title = title
        let navc = UINavigationController(rootViewController: childController)
        addChildViewController(navc)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
