class VideosController < ApplicationController
  def index
    @video = Video.new
  end

  def new
    @user = User.new
  end

  def create

  end

  def destroy
  end

  private
  
end
