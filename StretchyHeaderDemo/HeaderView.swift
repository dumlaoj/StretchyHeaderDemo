//
//  HeaderView.swift
//  StretchyHeaderDemo
//
//  Created by Jordan Dumlao on 1/18/19.
//  Copyright © 2019 Jordan Dumlao. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = .white
  }
  
  required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
}
