
package 'tree' do
    action :install
end

package 'ntp' do
    action :install
end

package 'git' do
    action :install
end

package 'nano' do
    action :install
end

service 'ntpd' do
    action :enable
    action :start
end

# example
apple_count = 4
puts "I have #{apple_count} apples"

template '/etc/motd' do
    source 'motd.erb'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

user 'user1' do
    comment 'user1'
    uid '123'
    home '/home/user1'
    shell '/bin/bash'
end

group 'admins' do
    members ['user1','vagrant']
    append true
end

# Assignment:
# Chef install 2 packages - Tree, NTP
# Manage /etc/motd - contents this server is the property of your name
#     owner root, group of root
