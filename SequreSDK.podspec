Pod::Spec.new do |spec|

  spec.name         = "SequreSDK"
  spec.version      = "1.0.3"
  spec.summary      = "Sequre Scanner SDK framework."
  spec.description  = "Sequre Scanner SDK framework for Sequre app to detect qr code"

  spec.homepage     = "https://github.com/IvanReyhan22/sequre-ios-sdk"
  spec.license      = ""
  spec.author       = { "Ahmad Ivan Reyhan" => "ivanreyhan2002@gmail.com" }
  spec.platform     = :ios, "15.0"
  spec.source       = { :git => "https://github.com/IvanReyhan22/sequre-ios-sdk.git", :tag => spec.version.to_s } 

  spec.source_files  = "SequreSDK/**/*.{swift}", "Classes/**/*.{h,m}", "SequreSDK/**/*.{colorset}"
  spec.resource_bundles = {
    'SequreSDKAssets' => ['SequreSDK/**/*.xcassets']
  }
  spec.resources = ['SequreSDK/**/*.tflite']

  spec.dependency 'TensorFlowLiteTaskVision'

  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'ONLY_ACTIVE_ARCH' => 'NO',
    'VALID_ARCHS' => 'arm64 x86_64 armv7 armv7s arm64e'
  }

  # spec.user_target_xcconfig = {
  #   'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  #   'ONLY_ACTIVE_ARCH' => 'NO',
  #   'VALID_ARCHS' => 'arm64 x86_64 armv7 armv7s arm64e'
  # }

  spec.static_framework = true

  spec.swift_versions = "5.0"
end
