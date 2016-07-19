class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :body, presence: true
  validates :user, presence: true	 
  validates :product, presence: true
	validates :rating, numericality: { only_integer: true }
  validates :user_id, :uniqueness => { :scope => :product_id, :message => "Already commented on product"}
end

