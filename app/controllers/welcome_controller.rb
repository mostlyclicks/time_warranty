class WelcomeController < ApplicationController

  def index
    # @users = User.all
  end

  def dashboard
     @users = User.all
  end

end