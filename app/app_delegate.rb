class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame UIScreen.mainScreen.bounds

    application.setStatusBarHidden true, animated:true

    @glView = CCGLView.viewWithFrame @window.bounds,
                  pixelFormat:KEAGLColorFormatRGB565,
                  depthFormat:0,
                  preserveBackbuffer: false,
                  sharegroup: nil,
                  multiSampling: false,
                  numberOfSamples: 0


    @director = CCDirector.sharedDirector
    @director.wantsFullScreenLayout = true
    @director.displayStats = true
    @director.animationInterval = 60.0
    @director.view = @glView
    @director.projection = KCCDirectorProjection2D
    @director.enableRetinaDisplay true
    @director.delegate = self

    @window.rootViewController = @director
    @window.addSubview @glView
    @window.makeKeyAndVisible

    CCTexture2D.defaultAlphaPixelFormat = KCCTexture2DPixelFormat_RGBA8888

    file_utils = CCFileUtils.sharedFileUtils
    file_utils.enableFallbackSuffixes = false
    file_utils.setiPhoneRetinaDisplaySuffix "-hd"
    file_utils.setiPadSuffix "-ipad"
    file_utils.setiPadRetinaDisplaySuffix "-ipadhd"

    CCTexture2D.PVRImagesHavePremultipliedAlpha true

    @hello_world = HelloWorld.node
    @director.runWithScene @hello_world
    true
  end
end
