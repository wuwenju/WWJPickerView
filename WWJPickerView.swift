//
//  WWJPickerView.swift
//  ShareDiscount
//
//  Created by 吴文举 on 2018/4/12.
//

import UIKit

class WWJPickerView: UIPickerView {
    /*public func contains(_ point: CGPoint) -> Bool
     该方法由nil对象调用时，会导致崩溃，所以对button进行了初始化，使用的时候，需要把重新创建的button 赋值
     */
    var doneBT     = UIButton()
    var cancleBT   = UIButton()
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        if (doneBT.frame .contains(point))  {
            return doneBT
        }else if (cancleBT.frame .contains(point))  {
            return cancleBT
        } else {
            return super.hitTest(point, with: event)
        }
    }
}
