#
# Be sure to run `pod lib lint IOSFirstPlugin.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IOSFirstPlugin'
  s.version          = '1.0.2'
  s.summary          = 'IOSFirstPlugin is to save user device token'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

   s.description      = <<-DESC
    "IOSFirstPlugin is to save user device token and also save user login , logout ,app open and app logout event in whole ios swift application"
                           DESC


  s.homepage         = 'https://github.com/Queenkumar/IOSfirstPlugin'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'QueenzendWebsolutions' => '“queenkumar007@gmail.com”' }
  s.source           = { :git => 'https://github.com/Queenkumar/IOSfirstPlugin.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  #s.ios.deployment_target = '8.0'

  #s.source_files = 'IOSFirstPlugin/Classes/**/*'
  
   s.ios.deployment_target = '11.0'

   s.source_files = 'Classes/**/*.swift'
   
   s.swift_version = '5.0'
   
   s.platforms = {
       "ios": "11.0"
   }
  # s.resource_bundles = {
  #   'IOSFirstPlugin' => ['IOSFirstPlugin/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'Alamofire', '~> 4.7'
   s.dependency 'SwiftyJSON'
   
end
