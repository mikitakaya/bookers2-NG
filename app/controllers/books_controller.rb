class BooksController < ApplicationController

 def index
  @book = Book.new
  @books = Book.all
 end

 def show
  # レコード1件のみ取得するため、インスタンス変数名は単数形にする
  @book = Book.find(params[:id])
 end

 def create
  # データを受け取り新規登録するためのインスタンス作成
  @book = Book.new(book_params)
  @book.user_id = current_user.id
  @book.save
  # 詳細画面にリダイレクト
  redirect_to book_path(@book.id)
 end

 def destroy
 end

 private

 def book_params
  params.require(:book).permit(:title, :body)
 end

end
