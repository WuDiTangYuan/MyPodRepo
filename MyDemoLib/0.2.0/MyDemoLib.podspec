#
# Be sure to run `pod lib lint MyDemoLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MyDemoLib'
  s.version          = '0.2.0'
  s.summary          = 'A short description of MyDemoLib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zhanghuixin/MyDemoLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhanghuixin' => 'huixin.zhang815@gmail.com' }
  s.source           = { :git => 'git@github.com:WuDiTangYuan/MyDemoLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.requires_arc = true

  s.subspec 'DemoNetwork' do |sp|
    sp.source_files = 'MyDemoLib/Classes/DemoNetwork/**/*'
    sp.dependency 'AFNetworking'
    sp.resource_bundles = {
      'DemoNetwork' => ['MyDemoLib/Assets/DemoNetwork/*.png']
    }
    sp.public_header_files = 'MyDemoLib/Classes/DemoNetwork/**/*.h'
  end

  s.subspec 'DemoImage' do |sp|
    sp.source_files = 'MyDemoLib/Classes/DemoImage/**/*'
    sp.dependency 'SDWebImage'
    sp.resource_bundles = {
      'DemoImage' => ['MyDemoLib/Assets/DemoImage/*.png']
    }
    sp.public_header_files = 'MyDemoLib/Classes/DemoImage/**/*.h'
  end

  s.subspec 'DemoLayout' do |sp|
    sp.source_files = 'MyDemoLib/Classes/DemoLayout/**/*'
    sp.dependency 'Masonry'
    sp.resource_bundles = {
      'DemoLayout' => ['MyDemoLib/Assets/DemoLayout/*.png']
    }
    sp.public_header_files = 'MyDemoLib/Classes/DemoLayout/**/*.h'
  end

  s.subspec 'DemoDatabase' do |sp|
    sp.source_files = 'MyDemoLib/Classes/DemoDatabase/**/*'
    sp.dependency 'FMDB'
    sp.resource_bundles = {
      'DemoDatabase' => ['MyDemoLib/Assets/DemoDatabase/*.png']
    }
    sp.public_header_files = 'MyDemoLib/Classes/DemoDatabase/**/*.h'
  end
end
