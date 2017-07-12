//
//  Boy.swift
//  TestSwift
//
//  Created by NiLaisong on 2017/7/12.
//  Copyright © 2017年 NiLaisong. All rights reserved.
//

import UIKit

class Boy<T:People>: Kid<T>
{
    override var sex:String
        {
        get
        {
            return "男"
        }
        set{
            
        }
    }
    //重写存储属性，不能重新初始值
    override var address: String
        {
        didSet{
            
        }
    }
}
