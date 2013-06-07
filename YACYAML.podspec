Pod::Spec.new do |s|
  s.name         = 'YACYAML'
  s.version      = '1.0.0'                                                                  # 1
  s.summary      = 'YACYAML for Cocoa reads and writes YAML, a friendlier, more human, plain text replacement for plists, JSON or NSKeyedArchives.' # 2
  s.source       = { :git => 'https://github.com/th-in-gs/YACYAML.git' }      # 4
  s.source_files = 'YACYAML', 'External/**/*.{h,m}'                                         # 5
end