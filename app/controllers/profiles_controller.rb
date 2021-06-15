class ProfilesController < ApplicationController
  def profile
    @user = User.new
  end
end
