class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
    
  def index
    @blogs = Blog.all.order(created_at: :desc)
  end
  
  def new
    if params[:back]
      @blog = current_user.blogs.build(blog_params)
    else
      @blog = current_user.blogs.build
    end
  end

  def show
    # @favorite = current_user.favorites.find_by(blog_id: @blog.id)
  end
  
  def create
    @blog = current_user.blogs.build(blog_params)
    if params[:back]
      render :new
    else
      if @blog.save
        # 一覧画面へ遷移して、"ブログを作成しました！"とメッセージを表示する
        redirect_to blogs_path, notice: "ブログを作成しました！"   
      else
        # 入力フォームを再描画します。
        render :new
      end
    end
  end
  
  def confirm
    @blog = current_user.blogs.build(blog_params)
    render :new if @blog.invalid?
    # binding.pryblog
  end
  
  def edit
  end
  
  def update
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path, notice: "ブログを削除しました！"
  end

  private 
  
  def blog_params
    params.require(:blog).permit(:title, :content, :image, :image_cache)
  end
  
  def set_blog
    @blog = Blog.find(params[:id])
  end

end