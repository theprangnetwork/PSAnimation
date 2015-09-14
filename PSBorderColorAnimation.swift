
//  PSAnimation by Pranjal Satija

import UIKit

struct PSBorderColorAnimation: PSAnimation {
    var duration: Double
    var toValue: AnyObject
    
    func performOnView(view: UIView, completion: (() -> ())?) {
        guard let toValue = (toValue as? UIColor)?.CGColor else {
            fatalError("PSBorderColorAnimation: toValue must be of type UIColor")
        }
        
        
        let animation = CABasicAnimation(keyPath: "borderColor")
        animation.fromValue = view.layer.backgroundColor
        animation.toValue = toValue
        
        
        CATransaction.setAnimationDuration(duration)
        if let completion = completion {
            CATransaction.setCompletionBlock(completion)
        }
        
        
        CATransaction.begin()
        
        view.layer.addAnimation(animation, forKey: nil)
        view.layer.borderColor = toValue
        
        CATransaction.commit()
    }
}