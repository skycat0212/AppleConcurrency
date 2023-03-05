//
//  ImageDownloader.swift
//  AppleConcurrencyStudy
//
//  Created by 김수진 on 2023/03/05.
//

import UIKit

struct ImageDownloader {
    
    func download(url: URL, completion: @escaping (UIImage?) -> Void) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
            else {
                print("Download image fail : \(url)")
                completion(nil)
                return
            }
            completion(image)
        }.resume()
    }
    
}
