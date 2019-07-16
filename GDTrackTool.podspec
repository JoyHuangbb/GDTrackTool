Pod::Spec.new do |spec|
  spec.name         = "GDTrackTool"
  spec.version      = "0.0.7"
  spec.summary      = "基于友盟的iOS无痕埋点，第一个组件工程，菜鸟一个随意喷，欢迎指导"
  spec.homepage     = "https://github.com/JoyHuangbb/GDTrackTool"
  spec.author             = { "黄彬彬" => "746978660@qq.com" }
  spec.source       = { :git => "https://github.com/JoyHuangbb/GDTrackTool.git", :tag => "#{spec.version}" }
  # spec.source_files  = "GDTrackToolDemo/GDTrackToolDemo/GDTrackTool/*.{h,m}"
  # spec.exclude_files = "Classes/Exclude"

  spec.subspec 'GDTrackTool' do |ss|
        ss.source_files = "GDTrackToolDemo/GDTrackToolDemo/GDTrackTool/**/*.{h,m}"
  end

  spec.dependency "UMengAnalytics-NO-IDFA"
  spec.framework = 'UIKit'

end
