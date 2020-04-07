# frozen_string_literal: true

source "https://rubygems.org"

gem "cocoapods"

gem "fastlane"
gem "artifactory"

gem "xcode-install"

# report
gem "xcov"
gem "slather"

gem "bundle-audit"

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
