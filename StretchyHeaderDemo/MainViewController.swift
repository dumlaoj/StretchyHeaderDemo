//
//  MainViewController.swift
//  StretchyHeaderDemo
//
//  Created by Jordan Dumlao on 1/18/19.
//  Copyright © 2019 Jordan Dumlao. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  var mainCollectionView: UICollectionView = {
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    collectionView.backgroundColor = .red
    return collectionView
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
//
//    self.view.addSubview(mainCollectionView)
//    mainCollectionView.fillSuperview()
    
    self.view.backgroundColor = .blue
    
    let tempView = UIView()
    tempView.translatesAutoresizingMaskIntoConstraints = false
    tempView.backgroundColor = .red
    
    view.addSubview(tempView)
    tempView.fillSuperview()
  }
  
}
