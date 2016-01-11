# A sample Gemfile
source "https://rubygems.org"

gem 'test-kitchen', ">= 1.5.0.rc"
gem 'kitchen-driver-sakuracloud', path: "../kitchen-driver-sakuracloud"
gem 'kitchen-provisioner-local_shell'
gem 'itamae'

group :itamae do
  # gem 'itamae-plugin-recipe-nginx_build'
  # PR https://github.com/zaru/itamae-plugin-recipe-nginx_build/pull/1
  gem 'itamae-plugin-recipe-nginx_build', github: 'higanworks/itamae-plugin-recipe-nginx_build', ref: 'updates_for_first_time'
end
