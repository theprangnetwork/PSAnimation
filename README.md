# PSAnimation
PSAnimation is an animation framework designed to allow you to use powerful, layer backed animations in your code, with great syntax and an easy to use interface. It's also backed by Core Animation, which opens up a ton of possibilites for animations. Currently, PSAnimation is pretty basic, it's the animation framework I used in ephemera (http://ephemeraapp.xyz), but it's nice and easy to use.

# Installation
To use PSAnimation, just drag all the .Swift files into your project. It's written in Swift 2.0, so projects using old versions of Swift won't support it.

# Usage
PSAnimation is really easy to use. Just create an animation object like this: 

```Swift
let animation = PSOpacityAnimation(duration: 0,5, toValue: 0)
```

After you do that, call `performPSAnimation()` on any UIView:

```Swift
myView.performPSAnimation(animation)
```

**Each animation also has a `performOnView(view: UIView)` method, but you shouldn't use it. Instead, the UIView extension handles calling that function for you.**

You can also include an optional completion block:

```Swift
myView.performPSAnimation(animation) {
  //completion block
}
```
