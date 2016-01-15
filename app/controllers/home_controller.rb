class HomeController < ApplicationController
  def index
    expires_in 20.minutes, public: true
  end
end
