require 'rails_helper'

feature "guest user create a username" do
  scenario " successfully create a new user" do
    visit new_user_path
    fill_in "username", with: "ali"
    click_button "Sign In"
    expect(page).to have_content "Username successfully created"
  end
end
