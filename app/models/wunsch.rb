class Wunsch < ActiveRecord::Base
  belongs_to :user, foreign_key: :u_id
  validates :name, presence: true
  validates :preis, numericality: true
end
