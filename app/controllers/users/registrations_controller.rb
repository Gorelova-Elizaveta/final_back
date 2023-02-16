class Users::RegistrationsController < Devise::RegistrationsController
    # include RackSessionFix
    respond_to :json
    private
    def respond_with(resource, _opts = {})
      if register_success then
        resource.persisted?
      else
      register_failed
      end
    end
    def register_success
      render json: { message: 'Signed up sucessfully.' }
    end
  
    def register_failed
      render json: { message: "Something went wrong." }
    end
  end