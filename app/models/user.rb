class User < ApplicationRecord
    has_one :profile
    has_one :account, through: :profile
    has_many :memberships
    has_many :groups, through: :memberships   
end
