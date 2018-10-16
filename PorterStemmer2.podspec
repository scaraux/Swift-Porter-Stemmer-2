#
# Be sure to run `pod lib lint PorterStemmer2.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PorterStemmer2'
  s.version          = '0.1.0'
  s.swift_version    = '4.2'
  s.summary          = 'A Swift wrapper over the Porter Stemmer 2 library'

  s.description      = <<-DESC
  A Swift wrapper over the Porter Stemmer 2 stemming library, from the official C-ANSI
  libstemmer library. This offers stemming with every language supported by the
  libstemmer library and its algorithms.
                       DESC

  s.homepage         = 'https://github.com/scaraux/Swift-Porter-Stemmer-2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Oscar Gotting' => 'gottingoscar@gmail.com' }
  s.source           = { :git => 'https://github.com/scaraux/Swift-Porter-Stemmer-2.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'

  s.source_files = 'PorterStemmer2/Classes/**/*'
  
end
