Pod::Spec.new do |s|
  s.name         = "WTStatusBar"
  s.version      = "1.0.0"
  s.summary      = "status bar"
  s.homepage     = "https://github.com/evadne/WTStatusBar"
  s.author       = { "Evadne Wu" => "ev@radi.ws" }
  s.source       = { :git => "https://github.com/pieceofsummer/WTStatusBar.git" }
  s.platform     = :ios, '6.1'
  s.source_files = 'WTStatusBar', 'WTStatusBar/WTStatusBar/**/*.{h,m}'
  s.frameworks = 'QuartzCore', 'UIKit'
  s.requires_arc = true
end
