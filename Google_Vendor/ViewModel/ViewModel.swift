//
//  ViewModel.swift
//  Google_Vendor
//
//  Created by Sky on 9/24/19.
//  Copyright © 2019 Sky. All rights reserved.
//

import Foundation

protocol ItemDelegate: class {
    func update()
}


class ViewModel {
    weak var itemDelegate: ItemDelegate?
    
    var items = [Item]() {
        didSet {
            itemDelegate?.update()
        }
    }
    
    func get() {
        ItemService.shared.getItems() { [weak self] itemss in
            self?.items = itemss
            print("Item count: \(itemss.count)")
        }
    }
    
    
}
