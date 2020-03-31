#
#  Be sure to run `pod spec lint HBKitTools.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  
  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.name         = "HBKitTools"
  spec.version      = "0.0.1"
  spec.summary      = "个人常用开发组件"
  spec.description  = "个人常用开发组件-自定义视图,常用分类,技术总结类目等."
  spec.homepage     = "https://github.com/hubin97/HBKitTools"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.author             = { "Hubin_Huang" => "970216474@qq.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.platform     = :ios, "9.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source       = { :git => "https://github.com/hubin97/HBKitTools.git", :tag => "#{spec.version}" }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source_files  = "HBKitTools/HBKitTools/*"
  spec.subspec 'HBCategorys' do |dd|
    dd.source_files  = "HBKitTools/HBKitTools/HBCategorys/*"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.requires_arc = true
  end

end