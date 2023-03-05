//
//  UIControl+.swift
//  AppleConcurrencyStudy
//
//  Created by 김수진 on 2023/03/05.
//

import UIKit

extension UIControl {
    func addAction(for controlEvents: UIControl.Event = .touchUpInside, _ closure: @escaping()->()) {
        addAction(UIAction { (action: UIAction) in closure() }, for: controlEvents)
    }
}
