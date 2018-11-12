class SessionsController < ApplicationController
require "pry"

  def new
  end

  def create
    if (params[:name].nil? || !params[:name].present?)
      redirect_to "/login"
    else
      # binding.pry
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    if session[:name].present?
      session.delete :name
      redirect_to "/login"
    else
      redirect_to "/login"
    end
  end
end
