# PSAnimation
PSAnimation is a wrapper around Core Animation, designed to allow you to use powerful, layer backed animations in your code, with great syntax and an easy to use interface.

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
