class User < ApplicationRecord
  validates :screen_name, presence: true,
                          length: {maximum: 14},
                          uniqueness: true; 

  validates :password, presence: true
end
