//
//  MainViewController.swift
//  StretchyHeaderDemo
//
//  Created by Jordan Dumlao on 1/18/19.
//  Copyright © 2019 Jordan Dumlao. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  private let cellID = "Cell ID"
  private let headerID = "Header ID"
  private let insetPadding: CGFloat = 16
  private var header: HeaderView?
  var mainView = MainView()
  
  override func loadView() {
    super.loadView()
    view = mainView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureCollectionView()
  }
  
  private func configureCollectionView() {
    let collectionView = mainView.mainCollectionView
    collectionView.dataSource = self
    collectionView.delegate = self
    if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
      layout.sectionInset = UIEdgeInsets(top: insetPadding, left: insetPadding, bottom: insetPadding, right: insetPadding)
    }
  }
}

extension MainViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 20
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
    cell.backgroundColor = .black
    return cell
  }
}

extension MainViewController: UICollectionViewDelegate {
  
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: view.frame.width - insetPadding * 2, height: 75)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    return CGSize(width: view.frame.width, height: 300)
  }
  
  func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerID, for: indexPath)
    header = headerView as? HeaderView
    return headerView
  }
}


