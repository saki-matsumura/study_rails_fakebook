source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"

#  - - - - - - - - - - - - - - - - - - - - - - -

# issue機能お試しテスト

#  - - - - - - - - - - - - - - - - - - - - - - -
# 追加
# パスワード生成用のジェム
gem "bcrypt"

# ENV用のジェム
gem "dotenv-rails"

# 画像アップ用のジェム
gem "carrierwave"
gem "mini_magick"

# Heloku用のジェム
gem "net-smtp"
gem "net-imap"
gem "net-pop"
#  - - - - - - - - - - - - - - - - - - - - - - -

gem "rails", "~> 6.1.6"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "sass-rails", ">= 6"
gem "webpacker", "~> 5.0"
gem "jbuilder", "~> 2.7"

gem "bootsnap", ">= 1.4.4", require: false

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  # 追加：pry
  gem "pry-rails"
end

group :development do
  gem "web-console", ">= 4.1.0"
  # gem "rack-mini-profiler", "~> 2.0"
  gem "listen", "~> 3.3"
  gem "spring"
end

group :test do
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver", ">= 4.0.0.rc1"
  gem "webdrivers"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
