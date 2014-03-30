class HomeController < ApplicationController
  def index
    # authenticate_user!
    @usage = Usage.new
  end
end
