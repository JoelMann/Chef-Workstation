
package 'tree' do
    action :install
end

package 'ntp' do
    action :install
end

package 'git' do
    action :install
end

service 'ntpd' do
    action :enable
    action :start
end

file '/etc/motd' do
    action :create
    content 'This server is the property of "YOUR NAME HERE"'
    owner 'root'
    group 'root'
end


# Assignment:
# Chef install 2 packages - Tree, NTP
# Manage /etc/motd - contents this server is the property of your name
#     owner root, group of root