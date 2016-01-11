include_recipe "../recipes/common_pkgs.rb"

include_recipe "nginx_build"
include_recipe "nginx_build::install"
