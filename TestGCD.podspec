Pod::Spec.new do |s|

  s.name         = "TestGCD"
  s.version      = "0.0.1"
  s.summary      = "Test for cocoapods"
  s.homepage     = "https://github.com/jiangyazhou/TestGCD"
  s.license      = "MIT"
  s.author       = { "jiangyazhou" => "jyz198701@sina.com" }
  s.platform     = :ios, "7.0"
  s.frameworks   = 'Foundation', 'UIKit', 'QuartzCore', 'CoreGraphics'
  s.source       = { :git => "https://github.com/jiangyazhou/TestGCD.git", :tag => "0.0.1" }
  s.source_files = "TestGCD/**/*.{h,m}"
  s.requires_arc = false

end