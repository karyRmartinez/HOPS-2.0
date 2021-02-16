//
//  FeedCollectionViewController.swift
//  Hops-Hackaton
//
//  Created by Kary Martinez on 2/15/21.
//  Copyright © 2021 Kary Martinez. All rights reserved.
//

import Foundation
import UIKit

class FeedViewController: UIViewController {
    var allNews = [Article]() {
          didSet {
              collectionView.reloadData()
          }
      }
   
  lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 0
        layout.itemSize = CGSize(width: view.frame.width, height: 400)
        let newsFeedView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        
        newsFeedView.register(NewsFeedCollectionViewCell.self, forCellWithReuseIdentifier: "theCell")
        newsFeedView.backgroundColor = .white
         // newsFeedView.dataSource = self
       // newsFeedView.delegate = self
        return newsFeedView
    }()
    
    

    
   
    override func viewDidLoad() {
        super.viewDidLoad()
      // Do any additional setup after loading the view.
        view.backgroundColor = .white
//        collectionView.delegate = self
//        collectionView.dataSource = self
        NavigationBarTitle()
        addSubview()
       // loadAPIData()
        collectionViewConstraints()
    }
    //MARK: addSubViews
     
     func addSubview() {
         self.view.addSubview(collectionView)
     }
    //MARK: Private Functions
    private func loadAPIData() {
        NewsAPIManager.manager.getNews { (result) in
              DispatchQueue.main.async {
                  switch result {
                  case .success(let dataFromOnline):
                    self.allNews = dataFromOnline
                      dump(dataFromOnline)
                  case.failure(let error):
                      print(error)
                  }
              }
          }
      }
private func NavigationBarTitle() {
       self.title = " WELCOME "
   }
private func collectionViewConstraints() {
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    collectionView.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: 0).isActive = true
    collectionView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    collectionView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    collectionView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
     }
    
    
}
//MARK: Extensions

