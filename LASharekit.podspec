Pod::Spec.new do |s|
  s.name         = "LASharekit"
  s.version      = "0.2"
  s.summary      = "Share kit"
  s.homepage     = "https://github.com/steve21124/LASharekit"
  s.license      = 'MIT'
  s.author       = { "Author" => "author@gmail.com" }
  s.source       = { :git => "https://github.com/steve21124/LASharekit.git" }

  s.source_files = 'LASharekit/*.{h,m}' # 5
  s.requires_arc = true
  s.resources = "LASharekit/LASharekit.bundle", "LASharekit/*.xib"
  
  s.dependency 'REComposeViewController', '2.2'
  s.dependency 'RDActionSheet'   
  s.dependency 'Facebook-iOS-SDK', '>= 3.2.1'      
  
  s.ios.frameworks = 'Accounts', 'AdSupport', 'Social','MessageUI'
end
