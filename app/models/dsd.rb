class Dsd < ActiveRecord::Base
  belongs_to :drink_sessions
  belongs_to :drinks
end
