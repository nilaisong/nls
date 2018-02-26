//
//  TestClass.swift
//  TestSwift
//
//  Created by NiLaisong on 2017/7/10.
//  Copyright © 2017年 NiLaisong. All rights reserved.
//

import UIKit

public class People: NSObject {
    //使用关键字static可以为所有类型定义类型属性和方法，关键字class仅用来为类定义类型属性和方法。
    //但class只能定义计算属性，而static也可以定义存储属性
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
    
    public var tel:String?
    public var sex:String = ""
    public var address:String = ""
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
    //
    static func run()
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
    func playBall()

}
//可以比所继承协议的访问级别低
private class PlayBall:Play
{
    var ballName:String="basketball"
    func playBall()
    {
        
    }
}
//泛型类型，以及泛型的约束；可以比所继承协议访问级别高
public class Kid<T:People>:People,Play
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
    public func walk(speed:Int)  {
        
    }
    //实现的访问级别不能低于类型和协议之间的最低访问级别
    public func playBall()
    {
        
    }
}
//private class Boy:Kid<People>
//{
//
//}
//扩展就是向一个已有的类、结构体或枚举类型添加新功能。
//除了存储性属性，其他计算属性和方法都可以扩展
 extension Kid
{
    func play()
    {
        let ball = PlayBall()
        let a = ball.ballName;
        ball.playBall();
    }
}
