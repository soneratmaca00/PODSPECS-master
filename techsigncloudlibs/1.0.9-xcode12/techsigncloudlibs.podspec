Pod::Spec.new do |s|
    s.name         = "techsigncloudlibs"
    s.version      = "1.0.9-xcode12"
    s.summary      = "Frameworks on cloud by Techsign"
    s.description  = <<-DESC
    Frameworks by Techsign by biy
    DESC
    s.homepage     = "https://techsign.com.tr/"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2021
                  LICENSE
                }
    s.author             = { "burakyildiz" => "burak.yildiz@techsign.com.tr" }
    s.source       = { :git => "https://github.com/soneratmaca00/PODSPECS-master.git", :tag => "#{s.version}" }
    s.vendored_frameworks = ["OpenCVTechsign.xcframework","openssl.xcframework","DigisignBase.xcframework","id_card_detection_ios.xcframework","RKYC_iOS.xcframework","passport_reader.xcframework"]
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.platform = :ios
    s.ios.deployment_target  = '10.0'
end