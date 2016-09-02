require 'rails_helper'

describe Product do 
	before do
		@product = Product.create!(name: 'Backup Camera')
		@user = User.create!(email: 'Jennaferhuey@gmail.com', password: 'Jennafer')
		@user1 = User.create!(email: 'KidNg@gmail.com', password: 'Wowwow')
		@user2 = User.create!(email: 'Fayto@gmail.com', password: 'FayFay')
		@product.comments.create!(rating: 1, user: @user, body: "Doesn't always turn on!")
		@product.comments.create!(rating: 3, user: @user1, body: "Makes life so much easier!")
		@product.comments.create!(rating: 5, user: @user2, body: "So convenient for parking")
	end
	it "returns the average rating of all comments" do
		expect(@product.average_rating).to eq (3)
	end

	it "is not valid" do
		expect(Product.new(description: "Camera installed to see blind spots behind you using your aftermarket or factory head unit")).not_to be_valid
	end
end