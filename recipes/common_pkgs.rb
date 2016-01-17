execute "apt-get update" do
  command "apt-get update"
end

%w[
fail2ban
apache2-utils
vim
wget
libev4
libev-dev
].each do |pkg|
  package pkg
end
