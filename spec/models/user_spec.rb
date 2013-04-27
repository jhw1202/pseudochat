require 'spec_helper'

describe User do

	it { should validate_presence_of(:name)}
	it { should validate_presence_of(:email)}
	it { should validate_presence_of(:password_digest)}
	it { should respond_to :name }
	it { should respond_to :email }
  it { should respond_to :password }

  let(:user){ FactoryGirl.create(:user) }

	it "validates uniqueness of email" do
    user.should validate_uniqueness_of :email
  end
end
