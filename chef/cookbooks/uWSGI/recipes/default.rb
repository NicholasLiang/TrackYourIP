# Get uWSGI
execute 'install uWSGI' do
    command	'pip3 install uwsgi'
end

execute 'deploy static files' do
    cwd     '/home/vagrant/project/mysite'
    command	'python3 manage.py collectstatic --noinput'
end

execute 'start uwsgi' do
  command   'sleep 10 && /usr/local/bin/uwsgi --ini /home/vagrant/project/uwsgi.ini'
end

# reload nginx
service "nginx" do
  action  :restart
end
