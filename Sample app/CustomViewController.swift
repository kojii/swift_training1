//
//  CustomViewController.swift
//  Sample app
//
//  Created by 斎藤 幸士 on 2015/08/18.
//  Copyright (c) 2015年 斎藤 幸士. All rights reserved.
//

import UIKit

class CustomViewController: UINavigationController,UINavigationControllerDelegate {

    var backBtn:UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // navi
        let navigation = UIView(frame: CGRectMake(0, 0, 400, 200))
        
        let navigationImage = UIImageView(frame: CGRectMake(0,0,400,200))
        navigationImage.image = UIImage(named: "navi.jpg")
        navigationImage.layer.position = CGPoint(x: 200, y: 50)
        navigation.addSubview(navigationImage)
        
        
        backBtn = UIButton(frame: CGRectMake(0,0,80,40))
        backBtn?.layer.masksToBounds = true
        backBtn?.setTitle("back", forState: UIControlState.Normal)
        backBtn?.layer.cornerRadius = 5.0
        backBtn?.backgroundColor = UIColor.grayColor()
        backBtn?.addTarget(self, action: "backPage:", forControlEvents: UIControlEvents.TouchUpInside)
        backBtn?.center = CGPoint(x: navigation.bounds.width - backBtn!.frame.size.width * 1.5, y: 50)
        
        navigation.addSubview(backBtn!)
        
        self.view.addSubview(navigation)
        self.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func backPage(sender: UIButton) {
        self.popViewControllerAnimated(true)
    }

    func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {
        if(self.childViewControllers.count <= 1){
            backBtn?.alpha = 0
        }else{
            backBtn?.alpha = 1
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
