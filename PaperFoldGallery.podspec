Pod::Spec.new do |s|
  s.name = 'PaperFoldGallery'
  s.version = '0.0.1' # 1
  s.summary = 'PaperFoldGallery' # 2
  s.source = { :git => 'git://github.com/honcheng/PaperFoldGallery.git' } # 4
  s.source_files = 'PaperFoldGallery/*.{h,m}' # 5
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/PaperFoldGallery"' }
  s.requires_arc = true
  s.frameworks = 'Accelerate'
  s.dependency 'PaperFold'
end