class BlogsController < ApplicationController
  # before_action :move_to_index, except: [:index, :show]
  def index
    @blog = Blog.all.order("id DESC")
  end

  def new
    
  end

  def create
    Blog.create(blog_params)
  end

  def show
    @id = Blog.find_by(id: params[:id])
  end

  def destroy
    @des = Blog.find_by(id: params[:id])
    @des.destroy 
  end

  def edit
    @edit = Blog.find_by(id: params[:id])
  end

  def update
    @up = Blog.find_by(id: params[:id])
    @up.update(blog_params) 
  end


  private
  def blog_params
    params.permit(:title, :image, :content)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
