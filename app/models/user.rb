class User < ApplicationRecord
  has_many :companies_users
  has_many :companies, through: :companies_users
end
