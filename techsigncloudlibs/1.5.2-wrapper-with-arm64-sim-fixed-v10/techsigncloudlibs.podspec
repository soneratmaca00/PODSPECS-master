Pod::Spec.new do |s|
    s.name         = "techsigncloudlibs"
    s.version      = "1.5.2-wrapper-with-arm64-sim-fixed-v10"
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
    s.source       = { :git => "https://github.com/soneratmaca00/PODSPECS-master.git", :tag => "1.5.2-wrapper-with-arm64-sim-fixed-v7" }
    s.vendored_frameworks = ["DigisignBase.xcframework",
        "OpenCVTechsign.xcframework",
        "id_card_detection_ios.xcframework",
        "id_card_detection_ios_cnn.xcframework",
        "RKYC_iOS.xcframework",
        "id_card_detection_ios_wrapper.xcframework",
        "openssl_techsign.xcframework",
        "passport_reader.xcframework"]
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
    s.platform = :ios
    s.ios.deployment_target  = '10.0'
    s.ios.frameworks = 'AVFoundation', 'Security'
end