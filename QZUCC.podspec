Pod::Spec.new do |s|  
  s.name             = “QZUCC”  
  s.version          = "1.0.1"
  s.summary          = "A marquee view used on iOS."  
  s.homepage         = "https://github.com/wcnjeusr/QZUCC”

  s.license          = 'MIT'  
  s.author           = { "wengmx" => "wcnjeusr@qq.com" }
  s.source           = { :git => "https://github.com/wcnjeusr/QZUCC", :tag => s.version.to_s }  
  # s.social_media_url = 'https://twitter.com/NAME'  

  s.platform     = :ios, '4.3'  
  # s.ios.deployment_target = '5.0'  
  # s.osx.deployment_target = '10.7'  
  s.requires_arc = true  
  
  s.source_files = 'QZUCC/*'  
  # s.resources = 'Assets'  
  
  # s.ios.exclude_files = 'Classes/osx'  
  # s.osx.exclude_files = 'Classes/ios'  
  # s.public_header_files = 'Classes/**/*.h'  
  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'  
  
end



