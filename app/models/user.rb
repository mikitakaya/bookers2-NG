class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # 1:N User（1）はたくさんのbook（N）を持っている
  # Userが削除された時に、そのUserが投稿したbookが全て削除される
  has_many :books, dependent: :destroy
end
