//
//  DetailViewController.swift
//  Google_Vendor
//
//  Created by Sky on 9/25/19.
//  Copyright © 2019 Sky. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  
    @IBOutlet weak var imageDetail: UIImageView!
    
    var viewModel: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.item.getBigImage{ [weak self] img in
            self?.imageDetail.image = img
        }
    }


}
