#
# Be sure to run `pod lib lint DaDaPushClient.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "DaDaPushClient"
    s.version          = "1.0.0"

    s.summary          = "DaDaPush Public API"
    s.description      = <<-DESC
                         DaDaPush: Real-time Notifications App Send real-time notifications through our API without coding and maintaining your own app for iOS or Android devices.
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://github.com/dadapush/dadapush-objc-client.git"
    s.license      = "Proprietary"
    s.source       = { :git => "https://github.com/dadapush/dadapush-objc-client.git.git", :tag => "#{s.version}" }
    s.author       = { "DaDaPush.com" => "contacts@dadapush.com" }

    s.source_files = 'DaDaPushClient/**/*.{m,h}'
    s.public_header_files = 'DaDaPushClient/**/*.h'


    s.dependency 'AFNetworking', '~> 3'
    s.dependency 'JSONModel', '~> 1.2'
    s.dependency 'ISO8601', '~> 0.6'
end

