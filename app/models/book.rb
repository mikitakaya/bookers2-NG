class Book < ApplicationRecord
  # Book class（N）はUser（1）に属する
  belongs_to :user
end
