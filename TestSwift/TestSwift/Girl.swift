//
//  Girl.swift
//  TestSwift
//
//  Created by NiLaisong on 2017/7/12.
//  Copyright © 2017年 NiLaisong. All rights reserved.
//

import UIKit

class Girl<T:People>: Kid<T>
{
    //
    override var sex:String
    {
        get
        {
            return "女"
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
    
    override var tel: String?
    {
        didSet{
            
        }
    }
}
