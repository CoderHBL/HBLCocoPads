Pod::Spec.new do |s|
s.name = ‘HBLCocopads’
s.version = ‘1.0.0’
s.license = 'MIT'
s.summary = ‘It’s a Test’
s.homepage = 'https://github.com/hblhehe/HBLCocoPads'
s.authors = { ‘HBL’ => ’584254308@qq.com' }
s.source = { :git => 'https://github.com/hblhehe/HBLCocoPads.git', :tag => s.version.to_s }
s.requires_arc = true
s.ios.deployment_target = '8.0'
s.source_files = 'HBLCocopads/*.{h,m}'
end