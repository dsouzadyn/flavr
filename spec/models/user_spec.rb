require 'rails_helper'

describe User do
  it "has a valid factory" do
    expect(FactoryGirl.create(:user)).to be_valid
  end
  it "is invalid without first_name" do
    expect(FactoryGirl.build(:user, first_name: nil)).to_not be_valid
  end
  it "is invalid without last_name" do
    expect(FactoryGirl.build(:user, last_name: nil)).to_not be_valid
  end
  it "is invalid without email" do
    expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
  end
  it "is invalid without email_confirmation" do
    expect(FactoryGirl.build(:user, email_confirmation: nil)).to_not be_valid
  end
  it "is invalid without password" do
    expect(FactoryGirl.build(:user, password: nil)).to_not be_valid
  end
  it "does not allow users with the same email" do
    FactoryGirl.create(:user, email: "xyz@abc.com", email_confirmation: "xyz@abc.com")
    expect(FactoryGirl.build(:user, email: "xyz@abc.com", email_confirmation: "xyz@abc.com")).to_not be_valid
  end
  it "returns a user's full name as a string" do
    user = FactoryGirl.create(:user, first_name: "John", last_name: "Doe")
    expect(user.name).to eq("John Doe")
  end
end
