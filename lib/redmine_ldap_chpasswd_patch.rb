module RedmineLdapChangePasswordPatch
  def self.included(base) # :nodoc:
    @text = 'shit happen'
    
    base.class_eval do
      unloadable # Send unloadable so it will not be unloaded in development     
    end

  end
end
