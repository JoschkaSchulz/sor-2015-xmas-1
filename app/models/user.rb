class User < ActiveRecord::Base
  # Include devise modules. Others available are:
  # :confirmable, :lockable, :recoverable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  has_many :wunsches, foreign_key: :u_id
end
