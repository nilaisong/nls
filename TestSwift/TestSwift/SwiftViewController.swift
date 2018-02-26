//
//  SwiftViewController.swift
//  TestSwift
//
//  Created by NiLaisong on 2017/11/3.
//  Copyright © 2017年 NiLaisong. All rights reserved.
//

import UIKit
//import RxCocoa

class SwiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let frame = self.view.superview?.bounds
        {
             self.view.frame = frame
        }
        let button:UIButton = UIButton.init(frame: CGRectFromString("0,0,100,100"))
        button.backgroundColor = UIColor.red
//        let text:UITextView = UITextView.init(frame: CGRectFromString("100,100,100,100"))
        
       let imgView =  UIImageView.init(frame: CGRectFromString("100,100,100,100"))
//        imgView.sd_setImage(with: URL!, placeholderImage: UIImage!)
        //        button.rx.tap.subscribe{ event in
        //            switch event
        //            {
        //            case .next(let element):
        //                break
        //            case .completed:
        //                break
        //            case .error(let errorInfo):
        //                break
        //            }
        //        }
//        button.rx.controlEvent(UIControlEvents.touchUpInside).subscribe(onNext: {
//            text.text = "welcome"
//        }, onError: nil, onCompleted: {
//            
//        }, onDisposed: nil)
        // Do any additional setup after loading the view.
        
        
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
