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
        label.textColor = .systemGreen
         label.textAlignment = .center
         label.text = "HOPS"
         label.font = UIFont(name: "savoyeLetPlain", size: 50)
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
    
    lazy var imageViewSet : UIImageView = {
    let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "ImageEars")
           return image
       }()
       
    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view.
        view.backgroundColor = .white
        addSubviews()
        settingUpConstraints()

    }
    private func addSubviews() {
        self.view.addSubview(titleLabel)
        self.view.addSubview(imageViewSet)
    }
    private func settingUpConstraints() {
        NSLayoutConstraint.activate([
    
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
        imageViewSet.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40),
        imageViewSet.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        imageViewSet.widthAnchor.constraint(equalToConstant: 200),
        imageViewSet.heightAnchor.constraint(equalToConstant: 200),
        ])
    }

}

