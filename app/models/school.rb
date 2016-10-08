class School < ApplicationRecord
  has_many :reports
  has_many :users

  validates :name,     :presence => true
  validates :address,  :presence => true
end
