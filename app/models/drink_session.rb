class DrinkSession < ActiveRecord::Base
  has_many :drinks, through: :dsd
  belongs_to :user
end
