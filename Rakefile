# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'cocosbug'
  app.frameworks  += %w(OpenGLES OpenAL AVFoundation AudioToolbox QuartzCore CoreLocation)

  # support for Cocos2D
  app.vendor_project  'vendor/cocos2d-iphone',
                      :xcode,
                      xcodeproj:  "cocos2d-ios.xcodeproj",
                      target:     "cocos2d",
                      products:   ["libcocos2d.a"],
                      headers_dir: "cocos2d"
  app.libs        << "/usr/lib/libz.dylib"
end
