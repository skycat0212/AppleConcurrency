//
//  ImageLiteral.swift
//  AppleConcurrencyStudy
//
//  Created by 김수진 on 2023/03/05.
//

import UIKit

extension UIImage {
    enum Literal {
        static var placeHolder: UIImage { UIImage(systemName: "photo") ?? UIImage() }
    }
}

