class Item < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :order_details, dependent: :destroy
  belongs_to :category
end
