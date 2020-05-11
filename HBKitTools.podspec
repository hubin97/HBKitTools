#
#  Be sure to run `pod spec lint HBKitTools.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  
  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.name         = "HBKitTools"
  spec.version      = "0.0.6"
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
  spec.source_files  = "HBKitTools/HBKitTools/*.h"
  
  spec.subspec 'HBCategorys' do |dd|
    dd.source_files  = "HBKitTools/HBKitTools/HBCategorys/*"
  end
  
  spec.subspec 'HBUIViews' do |dd|
    dd.source_files  = "HBKitTools/HBKitTools/HBUIViews/*"
  end
  
  spec.subspec 'HBCommonTools' do |dd|
    dd.source_files  = "HBKitTools/HBKitTools/HBCommonTools/*"
  end
  
  # 如依赖其他库这个地方有一点很关键,在需要引用的.h文件中不能import "xxx.h",只能@class xxx; 否则报错"could not build module 'xxx'"
  # https://blog.csdn.net/denggun12345/article/details/85095726
  spec.dependency 'FMDB'

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.requires_arc = true
  

end
