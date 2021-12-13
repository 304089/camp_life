class HomesController < ApplicationController
  skip_before_action :login_user
  def top
  end
end
