
Pod::Spec.new do |s|

  s.name         = "LLBaseKit"
  s.version      = "0.0.4"
  s.summary      = "创建项目公用基础组件"
  s.description  = "我是描述创建项目公用基础组件创建项目公用基础组件创建项目公用基础组件"
  s.homepage     = "https://github.com/Xianyus/LLBaseKit"
  s.license      = "MIT"
  s.author             = { "Saltedfish" => "1047912930.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Xianyus/LLBaseKit.git", :tag => s.version}
  s.source_files  = "LLBaseKit/LLBaseKit/LLBaseKits/*.{h,m}"
  s.requires_arc = true

end
