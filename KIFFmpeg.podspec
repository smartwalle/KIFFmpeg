Pod::Spec.new do |s|
  s.name         = "KIFFmpeg"
  s.version      = "0.0.1"
  s.summary      = "FFmpeg for iOS"
  s.description  = <<-DESC
                  FFmpeg for iOS.
                   DESC

  s.homepage     = "https://github.com/smartwalle/KIFFmpeg"
  s.license      = "MIT"

  s.author       = { "SmartWalle" => "smartwalle@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/smartwalle/KIFFmpeg.git", :tag => "#{s.version}" }

  s.ios.source_files        = 'FFmpeg-iOS/include/**/*.h'
  s.ios.public_header_files = 'FFmpeg-iOS/include/**/*.h'
  s.ios.preserve_paths      = 'FFmpeg-iOS/lib/*.a'
  s.ios.vendored_libraries  = 'FFmpeg-iOS/lib/*.a'

  s.libraries = 'iconv', 'z', 'bz2'
  s.requires_arc = false
end
