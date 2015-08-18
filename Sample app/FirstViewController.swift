//
//  FirstViewController.swift
//  Sample app
//
//  Created by 斎藤 幸士 on 2015/08/03.
//  Copyright (c) 2015年 斎藤 幸士. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {


    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nil, bundle: nil)
        setup()
    }
    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }
    
    func setup() {
        // 諸々準備
        self.title = "1st"
        self.tabBarItem.title = "1st"
        
        // next
        let nextBtn: UIButton = UIButton(frame: CGRectMake(0,0,120,50))
        nextBtn.backgroundColor = UIColor.grayColor()
        nextBtn.layer.masksToBounds = true
        nextBtn.setTitle("Next", forState: UIControlState.Normal)
        nextBtn.layer.cornerRadius = 5.0
        nextBtn.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-100)
        nextBtn.addTarget(self, action: "nextPage:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(nextBtn);
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func nextPage(sender: UIButton){
        self.navigationController?.pushViewController(NextViewController(), animated: true)
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
