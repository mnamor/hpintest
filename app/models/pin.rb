class Pin < ApplicationRecord

  belongs_to :user
  has_many :coment, dependent: :user

 VALID_URL_REGEX = /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/
 validates :url, presence: true, length: { maximum: 255 }, #ci-dessus REGEX pour valiser le format URL
                   format: { with: VALID_URL_REGEX },
uniqueness: { case_sensitive: false }
  validates :url,presence: true , length: {in:1..2048}
end
