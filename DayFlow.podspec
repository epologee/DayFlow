Pod::Spec.new do |s|
  s.name         = "DayFlow"
  s.version      = "0.0.3"
  s.summary      = "Strollable Date Picker."
  s.homepage     = "https://github.com/evadne/DayFlow"
  s.license      = 'MIT'
  s.author       = { "Evadne Wu" => "ev@radi.ws" }
  s.source       = { :git => "https://github.com/evadne/DayFlow.git", :tag => s.version.to_s }
  s.platform     = :ios, '6.0'
  s.source_files = 'DayFlow', 'DayFlow/**/*.{h,m}'
  s.exclude_files = 'DayFlow/Exclude'
  s.frameworks = 'QuartzCore', 'UIKit'
  s.requires_arc = true
end
