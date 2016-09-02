require 'rails_helper'

describe Comment do
	let(:comment) { Comment.new(body: "LEDS", rating: 5 )}

	it "needs a comment" do
		comment.body = nil
		expect(comment).to_not be_valid
	end

	it "user has already commented" do
		comment.body = "I love LEDS"
		comment.body = "Did I mention I love LEDS"
		expect(comment).to_not be_valid
	end
end