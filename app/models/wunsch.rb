class Wunsch < ActiveRecord::Base
  belongs_to :user, foreign_key: :u_id 
end
