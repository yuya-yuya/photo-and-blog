class PhotosController < ApplicationController
  def index
    @photo = Photo.new
    @photos = Photo.all
  end
  
  def create
    @photo = Photo.new(photo_params)
    @photo.user_id = current_user.id
    @photo.save
    redirect_to photos_path
  end
  
  private
  
  def photo_params
    params.require(:photo).permit(:image, :place_name, :caption)
  end
end
