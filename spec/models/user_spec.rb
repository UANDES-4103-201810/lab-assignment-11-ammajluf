require 'rails_helper'

RSpec.describe User, type: :model do
  it "test new user creation with valid attributes to be valid" do
    @user1 = create(:user)
    expect(@user1).to be_valid
  end
  it "test new user creation with not unique username not to be valid" do
    @user1 = create(:user, username: "Alvaro", email: "asdads@miuandes.cl", password: "sdas3234" )
    @user2 = build(:user)
    expect(@user2).to_not be_valid
  end

  it "test new user creation with not unique email not to be valid" do
    @user1 = create(:user, username: "Javier", email: "amajluf@miuandes.cl", password: "ssdsad234234")
    @user2 = build(:user)
    expect(@user2).to_not be_valid
  end

  it "test new user creation with longer than 20 characters username not to be valid" do
    @user1 = build(:user, username:"mi nombre tiene mas de veinte caracteres")
    expect(@user1).to_not be_valid
  end
end

