Pod::Spec.new do |s|
    s.name         = "techsigncloudlibs"
    s.version      = "1.3.8-wrapper"
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
    s.source       = { :git => "https://github.com/soneratmaca00/PODSPECS-master.git", :tag => "1.3.6-wrapper" }
    s.vendored_frameworks = ["DigisignBase.xcframework",
        "OpenCVTechsign.xcframework", 
        "id_card_detection_ios.xcframework", 
        "id_card_detection_ios_cnn.xcframework", 
        "id_card_detection_ios_wrapper.xcframework", 
        "openssl_techsign.xcframework",
        "passport_reader.xcframework", 
        "RKYC_iOS.xcframework"]
    s.pod_target_xcconfig = { 'ONLY_ACTIVE_ARCH' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
    s.user_target_xcconfig = { 'ONLY_ACTIVE_ARCH' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
    s.platform = :ios
    s.ios.deployment_target  = '11.0'
end