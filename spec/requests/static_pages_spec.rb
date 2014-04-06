require 'spec_helper'

describe "Static pages" do

  # telling RSpec that page is the subject of the tests
  # called by 'it' in the tests
  subject { page }

  describe "Home page" do

    # visit the root path before each example. 
    # (The before method can also be invoked with before(:each), 
    # which is a synonym.)
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    # full_title is called from spec/support/utilities.rb

    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end


