//
//  UIImageView + extension.swift
//  IChatSwiftBook
//
//  Created by Стас Жингель on 22.08.2021.
//

import UIKit


extension UIImageView {
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        self.image = image
        self.contentMode = contentMode
    }
}
