//
//  Item.swift
//  Google_Vendor
//
//  Created by Sky on 9/24/19.
//  Copyright © 2019 Sky. All rights reserved.
//

import UIKit

struct Item: Decodable {
    
    let id: Int!
    let title: String!
    let thumbnailUrl: String!
    let url: String!
    
    init?(dict: [String:Any]) {
        guard let id = dict["id"] as? Int,
            let title = dict["title"] as? String,
            let thumbnailUrl = dict["thumbnailUrl"] as? String,
            let url = dict["url"] as? String else { return nil }
        
        self.id = id
        self.title = title
        self.thumbnailUrl = thumbnailUrl
        self.url = url
    }
    
    func getSmallImage(completion: @escaping (UIImage?) -> Void) {
        cache.downloadFrom(endpoint: thumbnailUrl) { dat in
            if let data = dat {
                DispatchQueue.main.async {
                    completion(UIImage(data: data))
                }
            }
        }
    }
    
    func getBigImage(completion: @escaping (UIImage?) -> Void) {
        cache.downloadFrom(endpoint: url) { dat in
            if let data = dat {
                DispatchQueue.main.async {
                    completion(UIImage(data: data))
                }
            }
        }
    }
}
