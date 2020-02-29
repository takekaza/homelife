require 'rails_helper'
describe User do
  describe '#create' do
    it "is vaild with name, email, password, password_confirmation" do
      user = build(:user)
      expect(user).to be_valid
    end
    it "is invalid without a name" do
      user = build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
    end
    it "is invalid without an email" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
    it "is invalid without an password" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end
    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end
    it "is invalid with a name that has more than 13 characters " do
      user = build(:user, name: "aaaaaaaaaaaaaa")
      user.valid?
      expect(user.errors[:name]).to include("is too long (maximum is 12 characters)")
    end
    it "is valid with a name that has less than 12 characters " do
      user = build(:user, name: "aaaaaaaaaaaa")
      expect(user).to be_valid
    end
  end
end