require 'rails_helper'

describe UsersController, :type => :controller do
	before do
		#@user = User.create!(email: 'defaultemail@madeup.com', password: 'password1')
		#@user2 = User.create!(email: 'defaultemail2@madeup.com', password: 'password2')
		@user = FactoryGirl.create(:user)
		@user2 = FactoryGirl.create(:user)
	end	

	describe "GET #show" do
		context "User is logged in" do
			before do
				sign_in @user
			end
		
			it "loads correct user details" do 
				get :show, id: @user.id
				expect(response).to have_http_status(200)
				expect(assigns(:user)).to eq @user
			end
		end

		context "No user is logged in" do
			it "redirects to login"  do
				get :show, id: @user.id
				expect(response).to redirect_to(new_user_session_path)
			end
		end

		context "User1 cannot access show page of another user" do
			it "redirects to login" do
				get :show, id: @user2.id
				expect(response).to redirect_to(new_user_session_path)
			end
		end
	end
end