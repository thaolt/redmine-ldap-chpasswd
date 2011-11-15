class LDAPChangePasswordHook < Redmine::Hook::ViewListener

  #include ApplicationHelper
  
  def view_my_account(context = {})
    user = context[:user]
    f = context[:form]
    return '' unless user
    o = ''
    o << "</div><h3>#{l(:label_authentication)}</h3>"
    o << '<div class="box tabular"><p>'
    o << "<label></label>"
    o << ''
    o << '</p>'
    return o

  end


end
