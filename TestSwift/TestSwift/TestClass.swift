//
//  TestClass.swift
//  TestSwift
//
//  Created by NiLaisong on 2017/7/10.
//  Copyright © 2017年 NiLaisong. All rights reserved.
//

import UIKit

class People: NSObject {
    //使用关键字 static 来定义值类型的类型属性，关键字 class 来为类定义类型属性。
    //class只能定义计算属性，而static可以定义存储属性
    class var name:String {
        set {
            _name = newValue
        }
        get {
            return _name
        }
    }
    
    private static var _name:String=""
    //类型属性是通过类型本身来获取和设置，而不是通过实例
    static var age :Int = 0
    
    var tel:String?
    var sex:String = ""
    var address:String = ""
    //类没有默认的逐一成员初始化构造函器，要么指定构造函器，要么成员属性都有初始值
    init(sex:String) {
//        super.init()
        self.sex = sex
    }
    //在类中，便利构造器才能调用类自身的其他指定构造器
    convenience init(sex:String,address:String)
    {
        self.init(sex:sex)
        self.address = address
    }
    //子类可以调用或重写父类的所有构造器
    override init()
    {
//        self.init(sex: "")
        super.init()
    }
    //析构函数只适用于类,在类的定义中，每个类最多只能有一个析构函数。
    //析构函数不带任何参数，在写法上不带括号，会自动被调用
    deinit
    {

    }
    //下标脚本定义
    subscript(index:Int)->String
    {
        return ""
    }
    
   class func run()
   {
        print("run")
    }
    
    func walk()
    {
        
    }
}

//类专属协议，该class关键字必须是第一个出现在协议的继承列表中
protocol Play:class {
//    init(p:String)
}

class PlayBall:Play
{
    var ballName:String="basketball"
    
}
//泛型类型，以及泛型的约束
class Kid<T:People>:People,Play
{
    var mom:T,dady :T
    init(m:T,f:T)
     {

        self.mom = m
        self.dady = f
        
        super.init()
    }
    //重写父类方法
    override func walk() {
        
    }
    //方法重载
    func walk(speed:Int)  {
        
    }
}

//扩展就是向一个已有的类、结构体或枚举类型添加新功能。
//除了存储性属性，其他计算属性和方法都可以扩展
extension Kid
{
    func play()
    {
        let ball = PlayBall()
    }
}
