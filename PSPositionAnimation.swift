
//  PSAnimation by Pranjal Satija

import UIKit

struct PSPositionAnimation: PSAnimation {
    var duration: Double
    var toValue: AnyObject
    
    func performOnView(view: UIView, completion: (() -> ())?) {
        guard let toValue = toValue.CGPointValue else {
            fatalError("PSPositionAnimation: toValue must be of type CGPoint")
        }
        
        
        let animation = CABasicAnimation(keyPath: "position")
        animation.fromValue = NSValue(CGPoint: view.layer.position)
        animation.toValue = NSValue(CGPoint: toValue)
        
        
        CATransaction.setAnimationDuration(duration)
        if let completion = completion {
            CATransaction.setCompletionBlock(completion)
        }
        
        
        CATransaction.begin()
        
        view.layer.addAnimation(animation, forKey: nil)
        view.layer.position = toValue
        
        CATransaction.commit()
    }
}