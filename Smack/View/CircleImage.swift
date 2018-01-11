//
//  CircleImage.swift
//  Smack
//
//  Created by Anthony Petrizza on 1/10/18.
//  Copyright © 2018 Anthony Petrizza. All rights reserved.
//

import UIKit
@IBDesignable
class CircleImage: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    func setUpView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUpView()
    }
    
}
