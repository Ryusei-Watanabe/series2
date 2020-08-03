class BlogsappsController < ApplicationController
  before_action :set_blogsapp, only: [:show, :edit, :update, :destroy]

  def index
    @blogsapp = Blogsapp.all
  end

  def new
    @blogsapp = Blogsapp.new
  end
  def create
    @blogsapp = Blogsapp.new(blogsapp_params)
    if params[:back]
      render :new
    else
      if @blogsapp.save
        redirect_to blogsapps_path, notice: "ブログを作成しました。"
      else
        render :new
      end
    end
  end
  def confirm
    @blogsapp = Blogsapp.new(blogsapp_params)
    render :new if @blogsapp.invalid?
  end

  def show
  end

  def edit
  end
  def update
    if @blogsapp.update(blogsapp_params)
      redirect_to blogsapps_path, notice: "ブログを編集しました。"
    else
      render :edit
    end
  end

  def destroy
    @blogsapp.destroy
     redirect_to blogsapps_path, notice:"ブログを削除しました！"
  end

  private
  def blogsapp_params
    params.require(:blogsapp).permit(:title,:content)
  end
  def set_blogsapp
    @blogsapp = Blogsapp.find(params[:id])
  end
end
