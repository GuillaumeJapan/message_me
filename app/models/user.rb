class User < ApplicationRecord
  validates :username,
            presence: true,
            uniqueness: true,
            length: { in: 3..25 }

  has_secure_password          
end
