//
//  Test.swift
//  TestSwift
//
//  Created by NiLaisong on 2017/7/6.
//  Copyright © 2017年 NiLaisong. All rights reserved.
//

import Foundation

/*
访问级别	定义
public	可以访问自己模块中源文件里的任何实体，别人也可以通过引入该模块来访问源文件里的所有实体，
 模块指的是以独立单元构建和发布的 Framework 或 Application
internal	可以访问自己模块中源文件里的任何实体，但是别人不能访问该模块中源文件里的实体。
fileprivate	文件内私有，只能在当前源文件中使用。
private	只能在类中访问，离开了这个类或者结构体的作用域外面就无法访问。
*/

public  class Test:NSObject
{
    func test()
    {
        //基于类型安全，代码编译的时候会进行类型检查
        //1.除了可选类型，普通常量和变量必须赋值才能用
        //2.类型匹配才能用赋值和传递
        var test:String;
        test = "hello,welcome";
        print(test);
        let possibleNumber:String = "123"//"hello"
        //类型+？-可选类型，就是可以为nil的类型，表示值缺失的情况
        let convertedNumber:Int? = Int(possibleNumber)
        //不加判断就用!强制解析可选类型是不安全的
        let text = "\(possibleNumber):\(convertedNumber!)"
        print(text);
        //类型+!-隐式解析可选类型
        let convertedNumber2:Int! = Int(possibleNumber)
        let text2 = "\(possibleNumber):\(convertedNumber2)"
        print(text2);
        
        //if/while let，可选绑定语法
        //使用可选绑定（optional binding）来判断可选是否包含值，如果包含就把值赋给一个临时常量或者变量
        if let number = convertedNumber
        {
            print(number);
        }
        else
        {
//            print(number); //number临时常量，这里无法访问
        }
        let three = 3
        let pointOneFourOneFiveNine = 0.14159
        let pi = Double(three) + pointOneFourOneFiveNine
        let piInt = Int(pi)
        print(piInt);
        
        let a = self.testTuple();
        //没有名称标示的元组元素可以通过索引下标访问
        print("\(a.name),\(a.age),\(a.2)")
        //
        let name = self.testString(firstName: "", lastName: "")
        print(name)
        
        self.testFunc(nums:"","");
    }
    
    //可变参数，无法和oc兼容
    func testFunc<T>(nums:T ...)
    {
        for i in nums
        {
            print("num:\(i)")
        }
    }
    //元组类型，把多个不同类型的值组合成一个有序复合值
    //无法和oc兼容
    func testTuple() -> (name:String,age:Int,String) {
        let person:(String,Int,String) = ("Laison",30,"男");//生成元组，元组元素可以加上名称标示
        //把一个元组对象分解成多个常量或变量，不需要的元组元素可以用下划线忽略
        let(name,age,_) = person;
         print("\(name),\(age)")
        return person;
    }
    
    //字符串，没专门指定外部参数名的，就用内部参数名自动代替
    func testString(firstName:String,lastName:String) -> String {
        var stringName = firstName+lastName//""初始化
        stringName = String("")
        //链接添加、插入、移除和修改
        let c:Character = "N"
        stringName.insert(c, at: stringName.startIndex)
//        stringName.remove(at: stringName.endIndex)
        
        stringName+="i" //字符串链接
        stringName.append(" ")
        stringName = stringName + "Laisong"
        if !stringName.isEmpty
        {
            print("\(stringName):count\(stringName.characters.count)")
        }
        for char in stringName.characters
        {
            print(char)
        }
        return stringName
    }
    
    //数组，指定了外部参数名array
    func testArray(array a:[String])->[String]
    {
        var shoppingList:[String] = a
//            [String](repeating:"food", count:2)
        shoppingList = ["Eggs", "Milk"]
        if !shoppingList.isEmpty {
//            print(shoppingList.count)
            shoppingList += ["Apple","Banana"]//数组链接
            shoppingList.append("Orange")
            shoppingList.insert("Mango", at: 2)
            shoppingList.remove(at: 2)//shoppingList[2] = nil
//            shoppingList[4] = "Banana"//数组不能越界
            //修改指定范围的素组元素
            shoppingList[2...3] = ["Kiwi","Cherry"]
            
            for item in shoppingList
            {
                print(item)
            }
        }
        return shoppingList
    }
    //可以通过下划线忽略外部参数名，否则就会自动生成外部参数名
    func testDictionary(key:String,_ value:Int)
    {
        var dic = [String:Int]()
        dic = ["a":1,"b":2,"c":3];
        //增加、修改和移除，都可以通过下标操作
        dic["d"]  = 4//增加
        dic["c"] = 1
        dic.updateValue(1, forKey: "c")
        dic["a"] = nil//dic.removeValue(forKey: "a")
//        let keys = dic.keys
//        let values = dic.values
        if !dic.isEmpty
        {
            //一个键值对就是个元组
            for item in dic.enumerated()
            {
                let(key,value) = item;
                print("\(key):\(value)")
            }
        }
    }
    
    //闭包，类似其他语言中的匿名函数-就是没有名字的函数，函数类型不能有参数名称
    func testClosure(array:[Int],block:(Int,Int)->Bool)
    {
        let a = array.sorted(by:block)

        for i in a
        {
            print(i)
        }
    }
    
    func dSort(a:Int,b:Int) -> Bool {
        return a>b;
    }
    //尾随闭包
    func testTailClosure()
    {
        //简写闭包-使用了缩写参数名的闭包，必须指定闭包类型
//        let c1: (Int,Int)->Bool = {return $0 > $1}
//        c1(1,2)
//        let c2 = { (a:Int,b:Int)->Bool in
//            return a>b
//        }
//        c2(3,4)
        
        let c3 = self.dSort
        
        let array = [1,2,3,4]
        //1.没采用尾随闭包
        self.testClosure(array: array, block: c3)
        
//        //2.采用了尾随闭包-作为最后一个参数，闭包可以写在函数括号之后
//        self.testClosure(array: array)
//        { (a:Int,b:Int)->Bool in
//            return a>b
//        }
        //3.采用了简写的尾随闭包
//        self.testClosure(array: array)
//        {
//            return $0 < $1
//        }
    }
    //枚举类型
    func testEnum()
    {
        let wed = DaysofaWeek.Sunday
        let wedValue = DaysofaWeek.Sunday.rawValue
        print("\(wed):\(wedValue)")
        
        let july = Month.July
        
        let julyValue = Month.July.rawValue
        
        print("\(july):\(julyValue)")
        
        let s = Season.Summer;

        print(s.a)
  
    }
    //结构体类型
    func testStruct()  {

//        let student1 = Student(name: "", age: 0, sex: "")
//         let student2 = Student()
        
        let markA:MarkStruct = MarkStruct(mark1: 0)
        var markB = markA
        markB.mark2 = 100
        //结构体是数值类型，值传递
        print(markA.mark2)
        print(markB.mark2)
        
        var markC = StudentMarks(mark1:0)
        markC.mark1 = 100
//        markC.mark2 = 100 //私有属性，不能访问
//        markC.totalScore()
        
    }
    
    func testClass()
    {
//        print(TestClass.name)
//        TestClass.name = "kivi"
//        print(TestClass.name)
//        print(TestClass.age)
//        TestClass.age = 30
//        print(TestClass.age)
        //
        var girl:Any //Any可以表示任何类型，AnyObject可以代表任何class类型的实例。
        girl = Kid<People>(m: People(), f: People())
        //类型检查和转换
        if girl is People {
            if let g = girl as? People
            {
                print(g.address)
            }
        }
        
        
        var a = 1
        if a is Int
        {
            var b = Double(a)
            var c = a as! Double
        }
    }
}
