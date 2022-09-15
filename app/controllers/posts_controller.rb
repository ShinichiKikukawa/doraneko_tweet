class PostsController < ApplicationController
  before_action :authenticate_user
  before_action :limitation_correct_user, only: [:edit, :update, :destroy]
 
 
  def new
    unless @current_user
      flash[:notice] = "ログインして下さい。"
      redirect_to login_url
    end
    @post = Post.new
  end

  def create
    @post = Post.new(
      content: params[:content],
      user_id: @current_user.id,
      )
    if @post.save
     flash[:notice] = "投稿しました！"
     redirect_to posts_index_url
    else
      render :new
    end
  end

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
  end

  def edit
  end

  def update
    @post.content = params[:content]
   if @post.save
      flash[:notice] = "投稿を編集しました。"
      redirect_to posts_index_url
   else
     render :edit
   end
  end
  
  def destroy
    @post.destroy
    flash[:notice] = "投稿を削除しました。"
    redirect_to posts_index_url
  end

  def limitation_correct_user
   @post = Post.find(params[:id])
   unless @post.user_id == @current_user.id
     flash[:notice]= "自分以外のユーザーの編集はできません。"
     redirect_to posts_index_url
   end
  end
end
