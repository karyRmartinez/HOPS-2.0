//
//  NewsFeedCollectionViewCell.swift
//  Hops-Hackaton
//
//  Created by Kary Martinez on 2/16/21.
//  Copyright © 2021 Kary Martinez. All rights reserved.
//

import UIKit

class NewsFeedCollectionViewCell: UICollectionViewCell {
 
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Optima-BOld", size: 14)
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    lazy var ImageView: UIImageView = {
           let recipesImages = UIImageView()
           self.addSubview(recipesImages)
           return recipesImages
       }()
    
 private func settitleNameConstraints() {
       NSLayoutConstraint.activate([
           titleLabel.bottomAnchor.constraint(equalTo: self.ImageView.bottomAnchor, constant: 70),
           titleLabel.centerXAnchor.constraint(equalTo: self.ImageView.centerXAnchor),
       titleLabel.widthAnchor.constraint(equalToConstant: 350),
       titleLabel.heightAnchor.constraint(equalToConstant: 60)
       ])
   }
       private func setImageConstraints() {
        ImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
       ImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
      ImageView.centerYAnchor.constraint(equalTo: ImageView.centerYAnchor, constant: 100),
        ImageView.widthAnchor.constraint(equalToConstant: 350),
    ImageView.heightAnchor.constraint(equalToConstant: 200),

                ])

        }
    override init(frame: CGRect) {
         super.init(frame: frame)
         backgroundColor = .clear
        settitleNameConstraints()
        setImageConstraints()
     }


     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
}
