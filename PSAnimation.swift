
//  PSAnimation by Pranjal Satija

import UIKit

///defines a basic protocol for all PSAnimation structs to conform to. includes properties for the duration and to value of the animation, and a function to perform the animation
protocol PSAnimation {
    var duration: Double { get }
    var toValue: AnyObject { get }
    
    func performOnView(view: UIView, completion: (() -> ())?)
}

extension UIView {
    ///provides an extension on UIView, so that you can write `myView.performPSAnimation(animation)`
    func performPSAnimation(animation: PSAnimation, withKey key: String? = nil, withCompletion completion: (() -> ())? = nil) {
        animation.performOnView(self, completion: completion)
    }
}