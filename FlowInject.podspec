#
# Be sure to run `pod lib lint FlowInject.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FlowInject'
  s.version          = '0.1.0'
  s.swift_version    = '4.2'
  s.summary          = 'A short description of FlowInject.'
  s.description      = 'A library of Coordinator Patterns that are easy to use for dependency injections in applications written on pure Swift for iOS.'
  s.homepage         = 'https://github.com/jinShine/FlowInject'
  # s.screenshots      = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'seungjin' => 'seungjin429@gmail.com' }
  s.source           = { :git => 'https://github.com/jinShine/FlowInject.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '9.0'
  s.source_files = 'FlowInject/Classes/**/*'
end
