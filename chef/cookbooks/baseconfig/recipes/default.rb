# apt package lists
cookbook_file 'apt-sources.list' do
    path "/etc/apt/sources.list"
end
execute 'apt_update' do
    command 'apt-get update'
end

# Get Basic Packages
package 'wget'
package 'curl'
