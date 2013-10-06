require 'spec_helper'

describe User do
  before(:each) do
		@attr = {
			:email => 'foo@bar.com',
			:password => 'foobar',
			:password_confirmation => 'foobar',
		}
	end

	it "should have an email" do
		no_email = User.new(@attr.merge(:email => ""))
		no_email.should_not be_valid
	end

	it "should have a correct email" do
		no_email = User.new(@attr.merge(:email => "foobar"))
		no_email.should_not be_valid
	end
end
