class RegistrationsController < Devise::RegistrationsController
  protected
  def update_resource(resource, params)
    resource.update_without_password(params)
  end


# redirect after sign-up host
  def after_sign_up_path_for(resource)
    if current_user.status?
        flash[:notice] = "Please confirm by e-mail your inscription. Your account is verified before being a seller. "
          return payout_method_path
    else
        return root_path
    end
  end

end
