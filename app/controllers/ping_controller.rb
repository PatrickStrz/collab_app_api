class PingController < ApplicationController
  def ping
    render text: 'yes it works that is why you see'
  end
end
