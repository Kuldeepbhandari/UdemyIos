//
//  BorderButton.swift
//  Swoosh-App
//
//  Created by mac on 09/02/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.borderWidth = 3
        layer.borderColor = UIColor.white.cgColor
    }
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        layer.borderWidth = 3
//        layer.borderColor = UIColor.white.cgColor
//    }
    
    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
}
