//
//  Label + extension.swift
//  IChatSwiftBook
//
//  Created by Стас Жингель on 22.08.2021.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        self.text = text
        self.font = font
    }
}
