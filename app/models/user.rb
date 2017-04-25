class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # has_one :decision
  has_many :decision_groups
  has_many :bad_choices, :through => :decision_groups, :source => :decision

end
