class User < ApplicationRecord
  has_many :coment, dependent: :destroy
  has_many :pin, dependent: :destroy
  validates :user, presence: true, length:{maximum:20}
end
