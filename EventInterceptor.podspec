Pod::Spec.new do |s|
  s.name         = "EventInterceptor"
  s.version      = "0.0.1"
  s.summary      = "EventInterceptor"
  s.description  = "EventInterceptor"
  s.homepage     = "https://github.com/steve21124/dynamic-analytics-ios"
  s.source       = { :git => "git://github.com/steve21124/dynamic-analytics-ios.git" }
  s.source_files = 'EventInterceptor/UIApplication+EventInterceptor.{h,m}', 'EventInterceptor/UIResponder+EventInterceptor.{h,m}', 'EventInterceptor/UIViewController+EventInterceptor.{h,m}','EventInterceptor/EventLogger.{h,m}'
  s.requires_arc = true
end
