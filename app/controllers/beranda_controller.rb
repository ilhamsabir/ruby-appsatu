class BerandaController < ApplicationController
  before_action :authenticate_admin!
  def index
  end

  def home
  end
end
