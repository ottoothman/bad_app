class Decision < ApplicationRecord
  # has_and_belongs_to_many :users
  # belongs_to :user
  has_many :decision_groups
  has_many :members, :through => :decision_groups, :source => :user
end 
