require 'redmine'
require 'redmine_ldap_chpasswd_hook'

Redmine::Plugin.register :redmine_ldap_chpasswd do
  name 'Redmine LDAP Change Password plugin'
  author 'Thao Le Thach'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://code.songphi.org/project/redmine-ldap-chpasswd'
  author_url 'https://github.com/ycicom'
end
