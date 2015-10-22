class Adapters::OnlyAdmins < ActiveAdmin::AuthorizationAdapter

  #returns true if user is admin, for example action is edit and subject is product
  def authorized?(action, subject = nil)
    user.admin?
  end

end