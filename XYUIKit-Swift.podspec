#
# Be sure to run `pod lib lint XYUIKit-Swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XYUIKit-Swift'
  s.version          = '0.0.1'
  s.summary          = '👍👍👍 An easy way to make basic-ui-controls with XYUIKit-Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  对基础控件进行封装，方便快速便捷创建UI。平时项目中经常使用到的基础UI或者工具，为了方便自己与大家，一起来管理吧。。。join us！👍👍👍 Encapsulate basic controls for quick and easy UI creation. Usually used in the project of the basic UI, in order to facilitate their own and everyone, together to manage it... Join us!
                       DESC

  s.homepage         = 'https://github.com/s.requires_arc = true/XYUIKit-Swift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'coderXXY' => 'coderxxy@163.com' }
  s.source           = { :git => 'https://github.com/CoderXXY/XYUIKit-Swift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'XYUIKit-Swift/Classes/*'
  s.requires_arc = true
  # s.resource_bundles = {
  #   'XYUIKit-Swift' => ['XYUIKit-Swift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
