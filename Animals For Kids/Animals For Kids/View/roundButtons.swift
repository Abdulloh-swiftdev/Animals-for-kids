//
//  roundButtons.swift
//  Animals For Kids
//
//  Created by Abdulloh Bahromjonov on 10/9/20.
//

import UIKit


class roundButtons: UIButton {

    override func awakeFromNib()
    {
        super.awakeFromNib()
        corners()
    }
    
    
    func corners()
    {
        layer.cornerRadius = 7
    }
    
}
