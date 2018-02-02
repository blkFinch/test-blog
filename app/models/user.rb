class User < ApplicationRecord
  validates :screen_name, presence: true,
                          length: {maximum: 14} 

  validates :password, presence: true
end
