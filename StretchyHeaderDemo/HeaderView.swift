//
//  HeaderView.swift
//  StretchyHeaderDemo
//
//  Created by Jordan Dumlao on 1/18/19.
//  Copyright © 2019 Jordan Dumlao. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
  
  private var imageView: UIImageView = {
    let imgView = UIImageView()
    imgView.translatesAutoresizingMaskIntoConstraints = false
    imgView.contentMode = .scaleAspectFill
    return imgView
  }()
  
  private var image: UIImage? {
    get {
      return imageView.image
    }
    set {
      imageView.image = newValue }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = .white
    image = UIImage(named: "header")
    
    addSubview(imageView)
    imageView.fillSuperview()
  }
  
  required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
}
