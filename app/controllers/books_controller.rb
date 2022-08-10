class BooksController < ApplicationController

 def index
  @book = Book.new
 end

 def show
  @book = Book.new
 end

 def create
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
