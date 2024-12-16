//
//  ImageCache.swift
//  AsyncNetwork
//
//  Created by Ali Mert Özhayta on 15.12.2024.
//

import UIKit

final class ImageCache {
    
    static let shared = ImageCache()
    
    private var cache = NSCache<NSURL, UIImage>()

    func getImage(forKey key: NSURL) -> UIImage? {
        cache.object(forKey: key)
    }

    func setImage(_ image: UIImage, forKey key: NSURL) {
        cache.setObject(image, forKey: key)
    }
}
