%w[
vim
wget
openssl-devel
rubygem-rake
epel-release
openssl
httpress
].each do |pkg|
  package pkg
end
