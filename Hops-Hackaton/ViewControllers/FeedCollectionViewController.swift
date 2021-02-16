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
        view.backgroundColor = .white
       
        
        
        // Do any additional setup after loading the view.
    }
    
    //MARK: Private Functions
 
    
    
    
}
//MARK: Extensions

