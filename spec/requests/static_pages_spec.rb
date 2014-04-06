require 'spec_helper'

describe "Static pages" do

  # telling RSpec that page is the subject of the tests
  # called by 'it' in the tests
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end  

  it "should have the right links on the layout" do
  visit root_path
  click_link "About"
  expect(page).to have_title(full_title('About Us'))
  click_link "Help"
  expect(page).to have_title(full_title('Help'))
  click_link "Contact"
  expect(page).to have_title(full_title('Contact'))
  click_link "Home"
  click_link "Sign up now!"
  expect(page).to have_title(full_title('Sign up'))
  click_link "sample app"
  expect(page).to have_content('Welcome to the Sample App')
end

  describe "Home page" do

    # visit the root path before each example. 
    # (The before method can also be invoked with before(:each), 
    # which is a synonym.)
    before { visit root_path }

    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    # have_selector is from Capybara and allows to test for 
    # specific tags such as h1
    it { should have_title(full_title('Contact')) }
  end
end


