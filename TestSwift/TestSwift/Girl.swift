//
//  Girl.swift
//  TestSwift
//
//  Created by NiLaisong on 2017/7/12.
//  Copyright © 2017年 NiLaisong. All rights reserved.
//

import UIKit

//泛型类继承，子类的访问级别不能比基类高
public class Girl: Kid<People>
{
    init()
    {
        super.init(m: People(), f: People())
    }
    //被重写后，不能低于所在类访问级别和在基类中访问级别之间的最低级别
   public override var sex:String
    {
        get
        {
            return "女"
        }
        set{
            
        }
    }
    //重写存储属性，不能重新初始值
    public override var address: String
    {
        didSet{
            
        }
    }
    //
    public override var tel: String?
    {
        didSet{
            
        }
    }
    //
    public override func walk()
    {
        
    }
}
