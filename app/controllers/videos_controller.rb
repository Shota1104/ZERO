class VideosController < ApplicationController
  before_action :move_to_sign_in, except: [:index, :show, :new, :create]

  def index
    @video = Video.order("created_at DESC")
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(create_params)

    if @video.save
      redirect_to root_path
   else
     render :new
   end
  end
 

  def destroy
  end

  private
  def create_params
  params.required(:video).permit(:name, :video, :explanation, :category_id, :image, :price).merge(user_id: current_user.id)
  end
end