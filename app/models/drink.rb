class Drink < ActiveRecord::Base
  has_many :drink_sessions, through: :drink_sessions_drinks
end
