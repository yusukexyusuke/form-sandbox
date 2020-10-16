class ArticlesController < ApplicationController
  before_action :set_article, only: %i(show edit update destroy)

  def index # http methodが"GET"の場合、indexアクションにルーティングされる。
    @articles = Article.all
  end

  def new # http methodが"GET"の場合、newアクションにルーティングされる。
    @article = Article.new
  end

  def show # http methodが"GET"の場合、showアクションにルーティングされる。
  end

  def edit # http methodが"GET"の場合、editアクションにルーティングされる。
  end

  def create # http methodが"POST"の場合、createアクションにルーティングされる。
    # binding.pry # こいつをつかって処理をとめてparamsの中身を確認する。
    @article = Article.new(article_params)
    @article.user = User.all.sample
    if @article.save
      redirect_to articles_path, notice: '作成したよ'
    else
      render :edit
    end
  end

  def update # http methodが"PATCH"の場合、updateアクションにルーティングされる。
    # binding.pry # こいつをつかって処理をとめてparamsの中身を確認する。
    if @article.update(article_params)
      redirect_to articles_path, notice: '更新したよ'
    else
      render :edit
    end
  end

  def destroy
    # http methodが"DELETE"の場合、destroyアクションにルーティングされる。
    @article.destroy
    redirect_to articles_path, notice: '削除したよ'
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params # 悪いやつが変なデータをPOSTしてきて、それを受け取ってDBを破壊されたりしないように、必要なカラムだけを取得するようにする。
    params.require(:article).permit(:title, :body)
    # params => => <ActionController::Parameters {"utf8"=>"✓", "authenticity_token"=>"atG1nx78kCR9dzMgrkDi16lYVdCpMdEgwiMC2oVi4xAHzWy3EbCJia2I0Os0njAdbauJFZrGipfDCD6BnG5L8A==", "article"=>{"title"=>"a", "body"=>"aa"}, "ct"=>"保存", "controller"=>"articles", "action"=>"create"} permitted: false>o
  end
end
