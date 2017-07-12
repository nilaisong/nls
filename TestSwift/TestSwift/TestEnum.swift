//
//  TestEnum.swift
//  TestSwift
//
//  Created by NiLaisong on 2017/7/10.
//  Copyright © 2017年 NiLaisong. All rights reserved.
//

import UIKit

//每个枚举成员的类型都是当前枚举类型，大部分情况下程序并不关注枚举成员的原始值
enum Season {
    case Spring
    case Summer
    case Fall
    case Winter
    //枚举只支持计算属性而不支持存储属性
    var a :Season{
        
        get{
            return Season.Summer
        }
//        set
//        {
//            a = newValue
//        }
    }
    
}
//可以指定枚举成员的原始值类型以及原始值，整型会自动递增为每个成员设置一个原始值
enum Month: Int {
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
}
//其他类型的成员原始值需要单独设置
enum DaysofaWeek:String {
    case Sunday = "星期日"
    ,Monday = "星期一"
    ,Tuseday = "星期二"
    ,Wednesday = "星期三"
    ,Thursday = "星期四"
    ,Friday = "星期五"
    ,Saturday = "星期六"

}


