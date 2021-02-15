//
//  ViewController.swift
//  Hops-Hackaton
//
//  Created by Kary Martinez on 2/15/21.
//  Copyright © 2021 Kary Martinez. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    lazy var titleLabel: UILabel = {
         let label = UILabel()
         label.backgroundColor = .white
         label.textColor = .systemBlue
         label.textAlignment = .center
         label.text = "HOPS"
         label.font = UIFont(name: "savoyeLetPlain", size: 50)
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

