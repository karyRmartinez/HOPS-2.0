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
         label.textAlignment = .center
         label.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
         label.text = "HOPS"
         label.font = UIFont(name: "Optima-BOld", size: 45)
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
    
    lazy var imageViewSet : UIImageView = {
    let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "ImageEars")
           return image
       }()
    lazy var loginButton: UIButton = {
          let button = UIButton()
          button.setTitle("Hop On", for: .normal)
        button.backgroundColor = .systemGreen
          button.translatesAutoresizingMaskIntoConstraints = false
          button.layer.cornerRadius = 12
         button.addTarget(self, action: #selector(self.startButtonPressed(sender:)), for: .touchUpInside)
          return button
      }()
    
    @objc func startButtonPressed(sender: UIButton) {
    //self.animateView(sender)
    self.navigationController?.pushViewController(FeedViewController(), animated: true)
    }
       
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
        self.view.addSubview(loginButton)
    }
    private func settingUpConstraints() {
        NSLayoutConstraint.activate([
    
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
        imageViewSet.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40),
        imageViewSet.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        imageViewSet.widthAnchor.constraint(equalToConstant: 200),
        imageViewSet.heightAnchor.constraint(equalToConstant: 200),
        
       loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
       loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150),
       loginButton.widthAnchor.constraint(equalToConstant: 140),
       loginButton.heightAnchor.constraint(equalToConstant: 35),
                   
        ])
    }

}

