# frozen_string_literal: true

# HomeController
class HomeController < ApplicationController
  before_action :authenticate_user!
  def index; end

  def activate_all_users
    ActivateAllUsersJob.enqueue
    redirect_to root_path
  end
end
