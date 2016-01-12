include_recipe "../recipes/common_pkgs.rb"

include_recipe "nginx_build"
include_recipe "nginx_build::install"

include_recipe "../recipes/firewalld.rb"
include_recipe "../recipes/selfsigned_cert.rb"
