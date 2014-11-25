Pod::Spec.new do |s|
  s.name         = "STXDynamicTableView"
  s.version      = "1.0.0"
  s.summary      = "status bar"
  s.homepage     = "https://github.com/steve21124/STXDynamicTableView"
  s.author       = { "Evadne Wu" => "ev@radi.ws" }
  s.source       = { :git => "https://github.com/steve21124/STXDynamicTableView.git" }
  s.platform     = :ios, '7.0'
  s.source_files = 'STXDynamicTableView', 'STXDynamicTableView/**/*.{h,m}'
  s.frameworks = 'QuartzCore', 'UIKit'
  s.resources = "STXDynamicTableView/**/*.xib"
  s.requires_arc = true
end
