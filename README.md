motion-cocos-bug
================

This is a super simple Ruby Motion project that uses Cocos2d that demonstrates the problem compiling for device when attempting to set a color to any item.

# Problem
The problem occurs at any point where you attempt to assign a color to any object.  In this project, that happens on lines #9 and #15 in the `hello_world.rb`.  

```ruby
  #. . .
  @main_layer = CCLayerGradient.layerWithColor([255,255,0,255], fadingTo: [0,255,0,255])
  #. . .
  l.color    = [0, 255, 0]
```

## Details
The project will compile and run perfectly fine in the simulator. However, attempting to build with that line causes the compiler to crash with the following message:

```
Assertion failed: (bits > 0), function compile_stub, file compiler.cpp, line 6346.
rake aborted!
```

Commenting out the lines which assign color fixes the issue.