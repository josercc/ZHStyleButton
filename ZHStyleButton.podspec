

Pod::Spec.new do |s|
  s.name         = "ZHStyleButton"
  s.version      = "1.0.0"
  s.summary      = "可以设置默认 高亮 不可点击三种状态的按钮"
  s.description  = <<-DESC
  `ZHStyleButton`是 `UIButton`的子类可以设置 `默认` `高亮` `不可点击`三种状态下面的
  * 边框宽度`boardWidth`
  * 边框颜色`boardColor`
  * 圆角大小`cornerRadius`
  * 背景颜色`backgroundColor`
  * 文本颜色`textColor`
                   DESC

  s.homepage     = "https://github.com/josercc/ZHStyleButton"
  s.license      = "MIT"
  s.author             = { "君赏" => " josercc@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/josercc/ZHStyleButton.git", :tag => "#{s.version}" }
  s.source_files  = "ZHStyleButton", "ZHStyleButton/**/*.{h,m}"
  s.requires_arc = true
end
