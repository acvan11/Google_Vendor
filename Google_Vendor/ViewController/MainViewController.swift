//
//  ViewController.swift
//  Google_Vendor
//
//  Created by Sky on 9/23/19.
//  Copyright © 2019 Sky. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var listViewController: UIView!
    @IBOutlet weak var gridViewController: UIView!
    
    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setupMain()
    }
    
    private func setupMain() {
        viewModel.get()
        definesPresentationContext = true
    }

    @IBAction func switchButtonTapped(_ sender: UIBarButtonItem) {
        listViewController.isHidden.toggle()
        gridViewController.isHidden.toggle()
    }
    
}

