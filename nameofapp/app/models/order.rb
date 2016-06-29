class Order < ActiveRecord::Base
  belongs_to :product
  belings_to :user
end