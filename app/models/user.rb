class User < ApplicationRecord
  belongs_to :dog
  has_secure_password
end
