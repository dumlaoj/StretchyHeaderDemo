//
//  StretchyLayout.swift
//  StretchyHeaderDemo
//
//  Created by Jordan Dumlao on 1/18/19.
//  Copyright © 2019 Jordan Dumlao. All rights reserved.
//

import UIKit

class StretchyLayout: UICollectionViewFlowLayout {
  
  override init() {
    super.init()
    headerReferenceSize = CGSize(width: collectionView?.frame.width ?? 0, height: 300)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
    let attributes = super.layoutAttributesForElements(in: rect)
    
    attributes?.forEach {
      if $0.representedElementKind == UICollectionView.elementKindSectionHeader {
        guard let collectionView = collectionView else { return }
        let contentOffsetY = collectionView.contentOffset.y
        guard contentOffsetY < 0 else { return }
        $0.frame.size.height = $0.frame.height + -contentOffsetY
        $0.frame.origin.y = $0.frame.origin.y - -contentOffsetY
      }
    }
    return attributes
  }
  
  override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
    return true
  }
}
