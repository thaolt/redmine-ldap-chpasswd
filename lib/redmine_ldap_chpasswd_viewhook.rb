class LDAPChangePasswordHook < Redmine::Hook::ViewListener

  #include ApplicationHelper
  
  def view_my_account(context = {})
    user = context[:user]
    f = context[:form]
    return '' unless user
    o = ''
    o << "<h3>Change Password</h3>"
    o << '<div class="box tabular">'
    o << "<p><label>Current Password</label><input type=\"password\" name=\"old_password\" id=\"\" /></p>"
    o << "<p><label>New Password</label><input type=\"password\" name=\"new_password\" id=\"\" /></p>"
    o << "<p><label>New Password (again)</label><input type=\"password\" name=\"confirm_new_password\" id=\"\" /></p>"
    o << '</div>'
    o << ''
    return o

  end


end
