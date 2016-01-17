execute "apt-get update" do
  command "apt-get update"
end

%w[
git
curl
rake
ruby2.0 ruby2.0-dev
bison
libcurl4-openssl-dev
libhiredis-dev
libmarkdown2-dev
libcap-dev
libcgroup-dev
make
libpcre3 libpcre3-dev
libmysqlclient-dev
].each do |pkg|
  package pkg
end
