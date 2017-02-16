# class SecuredPingController < ApplicationController
#   def ping
#   end
# end

class SecuredPingController < ApplicationController
  before_action :authenticate
  # before_action :authenticate_user

  def ping
    render json: {
      message: "All good. You only get this message if you're authenticated.",
      user: @current_user
    }
  end
end
