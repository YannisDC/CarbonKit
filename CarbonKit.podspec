Pod::Spec.new do |s|
  s.name = 'CarbonKit'
  s.version = '0.0.2'
  s.license = 'MIT'
  s.summary = 'Carbon Footprint tracking in Swift'
  s.homepage = 'https://github.com/YannisDC/CarbonKit'
  s.authors = { 'Yannis De Cleene' => 'yannisdecleene@icloud.com' }
  s.source = { :git => 'https://github.com/YannisDC/CarbonKit.git', :tag => s.version }

  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.15'

  s.swift_versions = ['5.5']

  s.source_files = 'Source/*.swift'
end
