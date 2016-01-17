include_recipe "../recipes/common_pkgs.rb"
include_recipe "../recipes/mruby_pkgs.rb"

include_recipe "nginx_build"
include_recipe "nginx_build::install"

include_recipe "../recipes/selfsigned_cert.rb"
include_recipe "../recipes/nghttp2.rb"
