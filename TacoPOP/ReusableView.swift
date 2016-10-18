//
//  ReusableView.swift
//  TacoPOP
//
//  Created by Ambar Maqsood on 2016-10-18.
//  Copyright © 2016 Ambar Maqsood. All rights reserved.
//

import UIKit

protocol ReusableView: class {
    
}

extension ReusableView where Self: UIView {//constrains to UIView
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }

}
