class User < ActiveRecord::Base
  validates :name, presence: true,length: { minimum:2 }
  validates :password, presence: true,length: { minimum:3 }
   
end

