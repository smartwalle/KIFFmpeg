Pod::Spec.new do |s|
  s.name         = "KIFFmpeg"
  s.version      = "0.0.1"
  s.summary      = "FFmpeg for iOS"
  s.description  = "FFmpeg for iOS"
  s.homepage     = "https://github.com/smartwalle/KIFFmpeg"
  s.license	     = { :type => 'MIT', :file => '' }
  s.source       = { :git => "https://github.com/smartwalle/KIFFmpeg.git", :tag => "#{s.version}" }

  s.author       = { "SmartWalle" => "smartwalle@gmail.com" }
  
  s.ios.platform            = :ios, '6.0'
  s.ios.deployment_target   = '6.0'
  s.ios.source_files        = 'FFmpeg-iOS/include/**/*.h'
  s.ios.public_header_files = 'FFmpeg-iOS/include/**/*.h'
  s.ios.preserve_paths      = 'FFmpeg-iOS/lib/*.a'
  s.ios.vendored_libraries  = 'FFmpeg-iOS/lib/*.a'

  s.libraries = 'libiconv', 'libz', 'libbz2'
  s.requires_arc = false
end