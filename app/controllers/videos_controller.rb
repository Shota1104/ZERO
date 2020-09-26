class VideosController < ApplicationController
  def index
    @video = Video.new
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(create_params)
  end

  def destroy
  end

  private
  
end
