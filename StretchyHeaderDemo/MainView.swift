//
//  MainView.swift
//  StretchyHeaderDemo
//
//  Created by Jordan Dumlao on 1/18/19.
//  Copyright © 2019 Jordan Dumlao. All rights reserved.
//

import UIKit

class MainView: UIView {
  
  private var cellID = "Cell ID"
  private let headerID = "Header ID"

  var mainCollectionView: UICollectionView = {
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    collectionView.backgroundColor = .red
    return collectionView
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    configureCollectionView()
  }
  
  required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
  
  private func configureCollectionView() {
    addSubview(mainCollectionView)
    mainCollectionView.fillSuperview()
    
    mainCollectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: cellID)
    mainCollectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerID)
    
  }
}
