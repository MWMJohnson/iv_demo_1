require 'rails_helper'

RSpec.describe "User registration form" do
  it "creates new user" do
    visit root_path

    click_on "Sign Up!"

    expect(current_path).to eq(new_user_path)

    first_name = "test_first"
    last_name = "test_last"
    email = "test_email"
    password = "test"

    fill_in :user_first_name, with: first_name
    fill_in :user_last_name, with: last_name
    fill_in :user_email, with: email
    fill_in :user_password, with: password

    click_on "Create User"

    expect(page).to have_content("Welcome, #{first_name}!")
  end
end