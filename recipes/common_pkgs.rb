%w[
vim
wget
openssl-devel
rubygem-rake
epel-release
httpress
].each do |pkg|
  package pkg
end
