class UsersController < ApplicationController
  def show
   # URLに記載されたIDを参考に、必要なUserモデルを取得する
   @user = User.find(params[:id])
   # 特定の個人が投稿したもの全てを表示する
   @books = @user.books
  end

  def edit
  end
end
