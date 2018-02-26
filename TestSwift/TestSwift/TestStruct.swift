//
//  TestStruct.swift
//  TestSwift
//
//  Created by NiLaisong on 2017/7/10.
//  Copyright © 2017年 NiLaisong. All rights reserved.
//

struct Student
{
    var name:String = ""
    var age:Int = 0
    var sex:String = ""
    //没指定构造函数的，会生成默认构造函数：逐一成员初始化构造函数，
    //如果所有成员属性都有初始值的，则另外会生成空参数的构造函数
    
    //值类型(结构体，枚举)的实例方法中，将mutating关键字作为函数的前缀写在func之前，
    //表示可以在该方法中修改它所属的实例及其实例属性的值。
   mutating func change()
    {
        self.name   = ""
    }
}

//我们可以为结构体定义属性（常量、变量）和添加方法，从而扩展结构体的功能。
struct MarkStruct{
    var mark1: Int
    var mark2: Int = 100
    var mark3: Int = 100
//    //构造函数，指定了构造函数后就不会再有默认构造函数
    init(mark1:Int)
    {
        self.mark1 = mark1
    }
    //结构体里不需要convenience
    init(mark1:Int,mark2:Int)//,mark3:Int
    {
        self.init(mark1: mark1)
    }
}

//结构体在使用之前每个成员属性都必须有初始值，可以声明时赋值或构造函数赋值
struct StudentMarks {
    var mark1:Int  //存储属性可以添加属性观察器
    {
        willSet
        {
//            newValue
            print("mark1: \(mark1),totalMark: \(totalMark)")
        }
        didSet
        {
//            oldValue
            print("mark1:\(mark1),totalMark: \(totalMark)")
        }
    }
    //私有属性，不能被外部所访问
    private var mark2:Int = 78
    private var mark3:Int = 98
    
    //构造器里不会触发属性观察器发生，在外部赋值才会
    init(mark1:Int) {
        self.mark1 = mark1
        
    }
    //只读属性-get和set设置计算属性
    var totalMark:Int
    {
        get
        {
            //实例方法只能通过类型名访问类本身的类型属性及方法
            StudentMarks.total = mark1 + mark2 + mark3
            return StudentMarks.total
        }
    }
    //类型属性，通过类型名称来访问，不能通过构造器初始化
    static var total :Int=0
    {
        willSet
        {
          
        }
        didSet
        {
            
        }
    }
    //类型方法可以直接访问类本身的类型属性及类型方法
    static func restTotal()
    {
        total = 0
    }
}
