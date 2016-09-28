class DrinkSessions < ActiveRecord::Base
  has_many :drinks, through: :drink_sessions_drinks
  belongs_to :user
end
