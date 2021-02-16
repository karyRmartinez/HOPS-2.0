//
//  CategoryViewController.swift
//  Hops-Hackaton
//
//  Created by Kary Martinez on 2/16/21.
//  Copyright © 2021 Kary Martinez. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    lazy var IntroLabel: UILabel = {
        let label = UILabel()
            label.font = UIFont(name: "Optima-BOld", size: 20)
            label.textAlignment = .center
            label.adjustsFontSizeToFitWidth = true
            label.numberOfLines = 2
            label.textColor = .black
            label.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
           label.translatesAutoresizingMaskIntoConstraints = false
          return label
            }()
    
    lazy var beautyButton: UIButton = {
    let button = UIButton()
     button.setTitle("Beauty", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
       // button.addTarget(self, action: #selector(answerButtonPressed(sender:)), for: .touchUpInside)
    button.layer.cornerRadius = 12
           return button
       }()
    lazy var companiesButton: UIButton = {
     let button = UIButton()
         button.setTitle("Companies", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
     button.layer.cornerRadius = 12
    //button.addTarget(self, action: #selector(answerButtonPressed(sender:)), for: .touchUpInside)
             return button
         }()
    lazy var foodButton: UIButton = {
    let button = UIButton()
     button.setTitle("Eats", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
    button.layer.cornerRadius = 12
//  button.addTarget(self, action: #selector(answerButtonPressed(sender:)), for: .touchUpInside)
            return button
         }()

    private func addSubview() {
        view.addSubview(stackView)
        view.addSubview(IntroLabel)

       }
    private lazy var stackView: UIStackView = {
         let stackView = UIStackView(
             arrangedSubviews: [
                beautyButton,
                companiesButton,
                foodButton
              
             ]
         )
         stackView.axis = .vertical
         stackView.spacing = 15
         stackView.distribution = .fillEqually
         return stackView
     }()
    private func NavigationBarTitle() {
        self.title = "Explore"
     view.tintColor = .systemGreen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubview()
        setupStackViewConstraints()
        setContraints()

        // Do any additional setup after loading the view.
    }
    func setContraints() {
    NSLayoutConstraint.activate([
      IntroLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
       IntroLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150),
     IntroLabel.widthAnchor.constraint(equalToConstant: 350),
     IntroLabel.heightAnchor.constraint(equalToConstant: 55),
         
    ])
     }
    private func setupStackViewConstraints() {
     stackView.translatesAutoresizingMaskIntoConstraints = false
         NSLayoutConstraint.activate([
     stackView.topAnchor.constraint(equalTo: IntroLabel.topAnchor, constant: 50),
     stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
     stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
     stackView.heightAnchor.constraint(equalToConstant: 250)
         ])
     }
  

}
