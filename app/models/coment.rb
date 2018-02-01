class Coment < ApplicationRecord

  belongs_to :pin, dependent: :destroy
  belongs_to :user,dependent: :destroy
  validates :body, presence: true , length: {maximum:450}
end
