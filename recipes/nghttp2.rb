nghttp2_revision = "v1.6.0"
nghttp2_revision = node[:nghttp2][:revision] if node[:nghttp2] && node[:nghttp2][:revision]


%w[
g++ make binutils autoconf automake autotools-dev libtool pkg-config
  zlib1g-dev libcunit1-dev libssl-dev libxml2-dev libev-dev libevent-dev libjansson-dev
  libjemalloc-dev cython python3-dev python-setuptools
].each do |pkg|
  package pkg
end

git "nghttp2" do
  action :sync
  destination "/usr/local/src/nghttp2"
  repository "https://github.com/tatsuhiro-t/nghttp2.git"
  revision nghttp2_revision
  notifies :run, 'execute[nghttp2_install]'
end

execute "nghttp2_install" do
  cwd "/usr/local/src/nghttp2"
  command "mkdir -p /usr/lib/python2.7/site-packages && autoreconf -i && automake && autoconf && ./configure --prefix /usr && make install -j `nproc`"
  action :nothing
end

