//
//  BBRootView.swift
//  BBSwiftFramework
//
//  Created by Bei Wang on 10/8/15.
//  Copyright © 2015 Bei. All rights reserved.
//

import UIKit

class BBRootView: UIView {

    // MARK: - --------------------System--------------------
    
    // MARK: - --------------------功能函数--------------------
    // MARK: 初始化
    
    // MARK: - --------------------手势事件--------------------
    // MARK: 各种手势处理函数注释
    
    // MARK: - --------------------按钮事件--------------------
    // MARK: 按钮点击函数注释
    
    // MARK: - --------------------代理方法--------------------
    // MARK: - 代理种类注释
    // MARK: 代理函数注释
    
    // MARK: - --------------------属性相关--------------------
    // MARK: 属性操作函数注释
    
    // MARK: - --------------------接口API--------------------
    
    // MARK: 局部代码分隔
    func local(closure: ()->()) {
        closure()
    }
    
    // MARK: 通过XIB获取视图对象
    func getViewFromXib(xibName: String) -> UIView {
        return getViewFromXib(xibName, index: 0)
    }
    
    // MARK: 通过XIB和index获取视图对象
    func getViewFromXib(xibName: String, index: NSInteger) -> UIView {
        let array = NSBundle.mainBundle().loadNibNamed(xibName, owner: self, options: nil)
        var view: UIView!
        if (array.count > index) {
            view = array[index] as! UIView
        }
        
        return view
    }

}
