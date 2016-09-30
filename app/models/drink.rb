class Drink < ActiveRecord::Base
  has_many :drink_sessions, through: :dsd
end
