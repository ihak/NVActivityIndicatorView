//
//  NVActivityIndicatorBallClipRotate.swift
//  NVActivityIndicatorView
//
// The MIT License (MIT)

// Copyright (c) 2016 Vinh Nguyen

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

#if canImport(UIKit)
import UIKit

class NVActivityIndicatorAnimationOppositeStrokes: NVActivityIndicatorAnimationDelegate {
    
    func setUpAnimation(in layer: CALayer, size: CGSize, color: UIColor, secondaryColor: UIColor) {
        let duration: CFTimeInterval = 1.75
        let animationValues = [
            [Double.pi*3, Double.pi*2, Double.pi, Double.pi*0.88, Double.pi, Double.pi, Double.pi],
            [Double.pi, Double.pi*2, Double.pi*3, Double.pi*3.12, Double.pi*3, Double.pi*3, Double.pi*3]
        ]
        
        for i in 0...1 {
            // Rotate animation
            let rotateAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
            rotateAnimation.calculationMode = .cubic
            rotateAnimation.values = animationValues[i]
            
            // Animation
            let animation = CAAnimationGroup()
            animation.animations = [rotateAnimation]
            animation.timingFunction = CAMediaTimingFunction(name: .linear)
            animation.duration = duration
            animation.repeatCount = HUGE
            animation.isRemovedOnCompletion = false
            
            let circle = i == 0 ? NVActivityIndicatorShape.ringQuarter.layerWith(size: CGSize(width: size.width, height: size.height), color: .blue, lineWidth: 4) : NVActivityIndicatorShape.ringHalf.layerWith(size: CGSize(width: size.width, height: size.height), color: color, lineWidth: 4)

            let frame = CGRect(x: (layer.bounds.size.width - size.width) / 2,
                               y: (layer.bounds.size.height - size.height) / 2,
                               width: size.width,
                               height: size.height)

            circle.frame = frame
            circle.add(animation, forKey: "animation")
            layer.addSublayer(circle)
        }
    }
    
    func setUpAnimation(in layer: CALayer, size: CGSize, color: UIColor, tintColor: UIColor) {
        let duration: CFTimeInterval = 1.75
        let animationValues = [
            [Double.pi*3, Double.pi*2, Double.pi, Double.pi*0.88, Double.pi, Double.pi, Double.pi],
            [Double.pi, Double.pi*2, Double.pi*3, Double.pi*3.12, Double.pi*3, Double.pi*3, Double.pi*3]
        ]
        
        for i in 0...1 {
            // Rotate animation
            let rotateAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
            rotateAnimation.calculationMode = .cubic
            rotateAnimation.values = animationValues[i]
            
            // Animation
            let animation = CAAnimationGroup()
            animation.animations = [rotateAnimation]
            animation.timingFunction = CAMediaTimingFunction(name: .linear)
            animation.duration = duration
            animation.repeatCount = HUGE
            animation.isRemovedOnCompletion = false
            
            let circleColor = i == 0 ? tintColor : color
            let circle = i == 0 ? NVActivityIndicatorShape.ringQuarter.layerWith(size: CGSize(width: size.width, height: size.height), color: circleColor, lineWidth: 4) : NVActivityIndicatorShape.ringHalf.layerWith(size: CGSize(width: size.width, height: size.height), color: circleColor, lineWidth: 4)

            let frame = CGRect(x: (layer.bounds.size.width - size.width) / 2,
                               y: (layer.bounds.size.height - size.height) / 2,
                               width: size.width,
                               height: size.height)

            circle.frame = frame
            circle.add(animation, forKey: "animation")
            layer.addSublayer(circle)
        }
    }
}
#endif
