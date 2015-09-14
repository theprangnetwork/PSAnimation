
//  PSAnimation by Pranjal Satija

import UIKit

struct PSOpacityAnimation: PSAnimation {
    var duration: Double
    var toValue: AnyObject
    
    func performOnView(view: UIView, completion: (() -> ())?) {
        guard let toValue = toValue as? Float else {
            fatalError("PSOpacityAnimation: toValue must be of type Float")
        }
        
        
        let animation = CABasicAnimation(keyPath: "opacity")
        animation.fromValue = view.layer.opacity
        animation.toValue = toValue
    
        
        CATransaction.setAnimationDuration(duration)
        if let completion = completion {
            CATransaction.setCompletionBlock(completion)
        }
        
        
        CATransaction.begin()
        
        view.layer.addAnimation(animation, forKey: nil)
        view.layer.opacity = toValue
        
        CATransaction.commit()
    }
}