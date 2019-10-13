//
//  UIButtonExtension.swift
//  English Test Level Check
//
//  Created by MyMacBook on 06/10/2019.
//  Copyright © 2019 MyMacBook. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
  
//  func pulsate() {
//    let pulse = CASpringAnimation(keyPath: "transform.scale")
//    pulse.duration = 0.6
//    pulse.fromValue = 0.95
//    pulse.toValue = 1.0
//    pulse.autoreverses = true
//    pulse.repeatCount = 1
//    pulse.initialVelocity = 0.5
//    pulse.damping = 1.0
//
//    layer.add(pulse, forKey: nil)
//  }
  
//  func flash() {
//    let flash = CABasicAnimation(keyPath: "opacity")
//    flash.duration = 0.5
//    flash.fromValue = 1
//    flash.toValue = 0.1
//    flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
//    flash.autoreverses = true
//    flash.repeatCount = 3
//
//    layer.add(flash,forKey: nil)
//  }
  
  func turnGreen() {
    let go_green = CASpringAnimation(keyPath: "backgroundColor")
//    go_green.duration = 2
    go_green.fromValue = UIColor(red: 60, green: 128, blue: 232, alpha: 1)
    go_green.toValue = UIColor.green.cgColor
    go_green.autoreverses = false
    go_green.repeatCount = 1
    go_green.initialVelocity = 5
//    go_green.damping = 1.0
    
    layer.add(go_green, forKey: nil)
  }
  
  func turnRed() {
    let go_red = CABasicAnimation(keyPath: "backgroundColor")
//    go_red.duration = 2
    go_red.fromValue = UIColor(red: 60, green: 128, blue: 232, alpha: 1)
    go_red.toValue = UIColor.red.cgColor
//    go_red.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
    go_red.autoreverses = false
    go_red.repeatCount = 1
    
    layer.add(go_red,forKey: nil)
  }
  
}
