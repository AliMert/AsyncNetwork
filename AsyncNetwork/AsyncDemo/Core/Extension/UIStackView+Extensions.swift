//
//  UIStackView+Extensions.swift
//  AsyncNetwork
//
//  Created by Ali Mert Özhayta on 5.12.2024.
//

import UIKit

extension UIStackView {
    
    func clear() {
        arrangedSubviews.forEach { view in
            removeArrangedSubview(view)
            view.removeFromSuperview()
        }
    }
}
