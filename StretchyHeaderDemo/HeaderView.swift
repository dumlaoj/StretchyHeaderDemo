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
  
  private var blurView: UIVisualEffectView?
  
  private var animator: UIViewPropertyAnimator?
  
  var fractionComplete: CGFloat = 0 {
    didSet {
      animator?.fractionComplete = self.fractionComplete / 100
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = .white
    image = UIImage(named: "header")
    
    addSubview(imageView)
    imageView.fillSuperview()
    addBlur()
  }
  
  private func addBlur() {
    
    animator = UIViewPropertyAnimator(duration: 1, curve: .linear, animations: { [weak self] in
      guard let self = self else { return }
      let blurEffect = UIBlurEffect(style: .regular)
      self.blurView = UIVisualEffectView(effect: blurEffect)
      self.blurView?.translatesAutoresizingMaskIntoConstraints = false
      self.addSubview(self.blurView!)
      self.blurView!.fillSuperview()
    })
  }
  
  required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
}
