require 'redmine'
require 'net/ldap'
require 'redmine_ldap_chpasswd_viewhook'
require 'redmine_ldap_chpasswd_patch'
require 'dispatcher'

Dispatcher.to_prepare :redmine_ldap_chpasswd do
  require_dependency 'my_controller'
  unless MyController.included_modules.include? RedmineLdapChangePasswordPatch
    MyController.send(:include, RedmineLdapChangePasswordPatch)
  end 
end

Redmine::Plugin.register :redmine_ldap_chpasswd do
  name 'Redmine LDAP Change Password plugin'
  author 'Thao Le Thach'
  description 'This is a Redmine\'s plugin for change password of users who authenticating via LDAP'
  version '0.0.1'
  url 'http://code.songphi.org/projects/redmine-ldap-chpasswd'
  author_url 'https://github.com/ycicom'
end
