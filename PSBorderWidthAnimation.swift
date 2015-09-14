
//  PSAnimation by Pranjal Satija

import UIKit

struct PSBorderWidthAnimation: PSAnimation {
    var duration: Double
    var toValue: AnyObject
    
    func performOnView(view: UIView, completion: (() -> ())?) {
        guard let toValue = toValue as? CGFloat else {
            fatalError("PSBorderWidthAnimation: toValue must be of type CGFloat")
        }
        
        
        let animation = CABasicAnimation(keyPath: "borderWidth")
        animation.fromValue = view.layer.borderWidth
        animation.toValue = toValue
        
        
        CATransaction.setAnimationDuration(duration)
        if let completion = completion {
            CATransaction.setCompletionBlock(completion)
        }
        
        
        CATransaction.begin()
        
        view.layer.addAnimation(animation, forKey: nil)
        view.layer.borderWidth = toValue
        
        CATransaction.commit()
    }
}