//
//  UIImageView+Extension.swift
//  iChat
//
//  Created by Ilya on 12.10.2020.
//

import UIKit

extension UIImageView {
    convenience init(image: UIImage?, contentMode:UIView.ContentMode){
        self.init()
        self.image = image
        self.contentMode = contentMode
    }
}
