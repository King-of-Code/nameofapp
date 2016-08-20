FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com" }
	factory :user do
		first_name "Cynthia"
		last_name "Nguyen"
		email
		password "mypassword"
		admin false
	end


end

