class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  def feed
    Micropost.where("user_id = ?", id)
  end 
  
  has_many :microposts, dependent: :destroy  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
end
