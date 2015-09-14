
//  PSAnimation by Pranjal Satija

import UIKit

struct PSBackgroundColorAnimation: PSAnimation {
    var duration: Double
    var toValue: AnyObject
    
    func performOnView(view: UIView, completion: (() -> ())?) {
        guard let toValue = (toValue as? UIColor)?.CGColor else {
            fatalError("PSBackgroundColorAnimation: toValue must be of type UIColor")
        }
        
        
        let animation = CABasicAnimation(keyPath: "backgroundColor")
        animation.fromValue = view.layer.backgroundColor
        animation.toValue = toValue
        
        
        CATransaction.setAnimationDuration(duration)
        if let completion = completion {
            CATransaction.setCompletionBlock(completion)
        }
        
        
        CATransaction.begin()
        
        view.layer.addAnimation(animation, forKey: nil)
        view.layer.backgroundColor = toValue
        
        CATransaction.commit()
    }
}