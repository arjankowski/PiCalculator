Pod::Spec.new do |spec|
  spec.name         = 'EulerCalculator'
  spec.version      = '0.4.0'
  spec.summary      = 'Euler Calculator'
  spec.homepage     = 'https://github.com/arjankowski/PiCalculator'
  spec.license      = 'Apache License, Version 2.0'
  spec.author       = { 'art' => 'artrur.happy@gmail.com' }
  spec.osx.deployment_target = '10.15'
  spec.ios.deployment_target = '13.0'
  spec.tvos.deployment_target = '13.0'
  spec.watchos.deployment_target = '6.0'
  spec.visionos.deployment_target = '1.0'
  spec.source       = { :git => 'https://github.com/arjankowski/PiCalculator', :tag => spec.version.to_s }
  spec.swift_versions = ['5']
  spec.requires_arc = true

  spec.dependency "PiCalculator", spec.version.to_s
  spec.source_files = 'EulerCalculator/Sources/**/*.swift'
end
