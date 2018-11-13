class UsersController < ApplicationController
  before_action :set_user, only: %i(show edit update destroy)

  def index # http methodが"GET"の場合、indexアクションにルーティングされる。
    @users = User.all
  end

  def new # http methodが"GET"の場合、newアクションにルーティングされる。
    @user = User.new
  end

  def show # http methodが"GET"の場合、showアクションにルーティングされる。
  end

  def edit # http methodが"GET"の場合、editアクションにルーティングされる。
  end

  def create # http methodが"POST"の場合、destroyアクションにルーティングされる。
    # binding.pry # こいつをつかって処理をとめてparamsの中身を確認する。
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: '作成したよ'
    else
      render :edit
    end
  end

  def update # http methodが"PATCH"の場合、destroyアクションにルーティングされる。
    # binding.pry # こいつをつかって処理をとめてparamsの中身を確認する。
    if @user.update(user_params)
      redirect_to users_path, notice: '更新したよ'
    else
      render :edit
    end
  end

  def destroy
    # http methodが"DELETE"の場合、destroyアクションにルーティングされる。
    @user.destroy
    redirect_to users_path, notice: '削除したよ'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    # nameとemailを受け取るように定義せよ！
    # ↓↓↓↓↓解答はここから↓↓↓↓↓
    
    params.require(:user).permit(:name, :email)
    # ↑↑↑↑↑解答はここまで↑↑↑↑↑
  end
end
