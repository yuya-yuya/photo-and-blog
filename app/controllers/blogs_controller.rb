class BlogsController < ApplicationController
  def index
    @blog = Blog.new
    @blogs = Blog.all
  end
  
  def create
    @blog = Blog.new(blog_params)
    @blog.user.id = current_user.id
    @blog.save
    redirect_to blogs_path
  end
  
  private
  
  def blog_params
    params.require(:blog).permit(:image, :title, :caption)
  end
end

