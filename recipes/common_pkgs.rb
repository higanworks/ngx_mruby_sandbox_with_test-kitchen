%w[
vim
wget
openssl-devel
rubygem-rake
].each do |pkg|
  package pkg
end
