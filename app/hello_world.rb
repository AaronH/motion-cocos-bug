class HelloWorld < CCScene
  def init
    if super
      #
      # @main_layer = CCLayer.node.tap do |layer|
      #
      # Comment out the line below and uncomment the above to compile for device.
      #
      @main_layer = CCLayerGradient.layerWithColor([255,255,0,255], fadingTo: [0,255,0,255]).tap do |layer|
        @label = CCLabelTTF.labelWithString('Ruby Motion Rulez!!!11', fontName:'Marker Felt', fontSize:32).tap do |l|
          l.position = [layer.contentSize.width / 2, layer.contentSize.height / 2]

          # the following is the problem line
          NSLog "Going to set the text color to green"
          l.color    = [0, 255, 0]  # comment out this line to compile for device
          NSLog "Set the color to green"

        end
        layer.addChild @label
      end
      self.addChild @main_layer
    end
    self
  end
end