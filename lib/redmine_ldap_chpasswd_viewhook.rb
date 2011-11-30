class LDAPChangePasswordHook < Redmine::Hook::ViewListener

  #include ApplicationHelper
  
  def view_my_account(context = {})
    user = context[:user]
    f = context[:form]
    return '' unless user
    o = '</div>'
    o << "<h3>Change Password</h3>"
    o << '<div class="box tabular">'
    o << "<p><label for=\"user_password\">Current Password</label><input type=\"password\" name=\"old_password\" id=\"user_password\" style=\"width:90%\" /></p>"
    o << "<p><label for=\"new_password\">New Password</label><input type=\"password\" name=\"new_password\" id=\"new_password\" style=\"width:90%\" /></p>"
    o << "<p><label for=\"confirm_password\">New Password (again)</label><input type=\"password\" name=\"confirm_new_password\" id=\"confirm_password\" style=\"width:90%\" /></p>"
    o << '</div>'
    o << '<div style="display:none">'
    return o

  end


end
