# Nginx Server Configuration
apt_package 'nginx'

cookbook_file "nginx-default" do
  path "/etc/nginx/sites-enabled/mysite_nginx.conf"
end

# reload nginx
service "nginx" do
  action  :restart
end
