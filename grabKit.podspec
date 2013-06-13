Pod::Spec.new do |s|
  s.name         = "grabKit"
  s.version      = "1.3.1"
  s.summary      = "Drop-in iOS component to easily import photos from Facebook, FlickR, Instagram, Picasa, and more."
  s.description  = <<-DESC
				GrabKit allows you to retrieve photos from  :
					* Facebook
					* FlickR
					* Picasa
					* Instagram
					* iPhone/iPad
					* ... and more to come.
					DESC
  s.homepage     = "https://github.com/pierrotsmnrd/grabKit"
  s.screenshots  = "https://github.com/pierrotsmnrd/grabKit/blob/master/doc/demo.gif"

  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }

  s.author       = { "Pierre-Olivier Simonard" => "pierre.olivier.simonard@gmail.com" }
  
  s.source       = { :git => "https://github.com/pierrotsmnrd/grabKit.git", :tag => "v1.3.1" }


  s.platform = :ios, '5.1'

  s.requires_arc = true
  
  s.source_files = 'grabKit/grabKit/**/*.{h,m}'

  s.dependency 'Facebook-iOS-SDK', '~> 3.5.1'
  s.dependency 'ISO8601DateFormatter', '~> 0.6'
  s.dependency 'MBProgressHUD', '~> 0.6'
  s.dependency 'NVUIGradientButton', '~> 1.3.0'
  s.dependency 'PSTCollectionView', '~> 0.0.1' 
  s.dependency 'objectiveflickr', '~> 2.0.2'

  s.subspec 'GData' do |gdata|
    gdata.dependency 'GData', '~> 0.0.1'  
    gdata.requires_arc = false
  end

  def s.post_install(target_installer)
    puts "\nGenerating grabKit resources bundle\n".yellow if config.verbose?
    Dir.chdir File.join(config.project_pods_root, 'grabKit') do
      command = "xcodebuild -project grabKit.xcodeproj -target GrabKitBundle CONFIGURATION_BUILD_DIR=./"
      command << " 2>&1 > /dev/null" unless config.verbose?
      unless system(command)
        raise ::Pod::Informative, "Failed to generate grabKit resources bundle"
      end
    end
    if Version.new(Pod::VERSION) >= Version.new('0.16.999')
      script_path = target_installer.copy_resources_script_path
    else
      script_path = File.join(config.project_pods_root, target_installer.target_definition.copy_resources_script_name)
    end
    File.open(script_path, 'a') do |file|
      file.puts "install_resource 'grabKit/GrabKitBundle.bundle'"
    end
  end

end