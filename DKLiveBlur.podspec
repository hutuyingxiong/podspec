Pod::Spec.new do |s|
  s.name = 'DKLiveBlur'
  s.version = '0.0.1' # 1
  s.summary = 'DKLiveBlur' # 2
  s.source = { :git => 'git://github.com/steve21124/DKLiveBlur.git' } # 4
  s.source_files = 'LiveBlur/DKLiveBLur/**/*.{h,m}' # 5
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/DKLiveBLur"' }
  s.requires_arc = true
  s.frameworks = 'Accelerate'
end