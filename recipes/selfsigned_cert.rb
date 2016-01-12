execute "create serlfsigned certificate1" do
  command "openssl genrsa 2048 > /etc/nginx/cert.key && \
           openssl req -subj '/CN=cert1.example.com' -new -x509 -nodes -sha1 -days 3650 -key /etc/nginx/cert.key > /etc/nginx/cert.pem"
  not_if "test -f /etc/nginx/cert.pem"
end

execute "create serlfsigned certificate2" do
  command "openssl genrsa 2048 > /etc/nginx/cert2.key && \
           openssl req -subj '/CN=cert2.example.com' -new -x509 -nodes -sha1 -days 3650 -key /etc/nginx/cert2.key > /etc/nginx/cert2.pem"
  not_if "test -f /etc/nginx/cert2.pem"
end
