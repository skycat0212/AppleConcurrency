//
//  ImageSourceInfo.swift
//  AppleConcurrencyStudy
//
//  Created by 김수진 on 2023/03/05.
//

import Foundation

enum ImageSourceInfo: Int {
    case sky
    case river
    case jeju
    case coffee
    case bicycle
    
    var name: String {
        switch self {
        case .sky: return "sky"
        case .river: return "river"
        case .jeju: return "jeju"
        case .coffee: return "coffee"
        case .bicycle: return "bicycle"
        }
    }
    
    var url: URL? {
        switch self {
        case .sky:
            return URL(string: "https://raw.githubusercontent.com/skycat0212/AppleConcurrency/main/Image/sky.JPG")
        case .river:
            return URL(string: "https://raw.githubusercontent.com/skycat0212/AppleConcurrency/main/Image/river.jpg")
        case .jeju:
            return URL(string: "https://raw.githubusercontent.com/skycat0212/AppleConcurrency/main/Image/jeju.jpg")
        case .coffee:
            return URL(string: "https://raw.githubusercontent.com/skycat0212/AppleConcurrency/main/Image/coffee.jpg")
        case .bicycle:
            return URL(string: "https://raw.githubusercontent.com/skycat0212/AppleConcurrency/main/Image/bicycle.jpg")
        }
    }
}
