require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject {page}

  describe "Home page" do
    before {visit root_path}
    it {should have_selector('h1', text: 'Sample App')}
    it {should have_selector('title', text: base_title) }
  end

  describe "Help page" do
    before {visit help_path}
    it {should have_selector('h1', text: 'Help')}
    it {should have_selector('title', text: "Help | #{base_title}")}
  end

  describe "About page" do
    before{visit about_path}
    it {should have_selector('h1', text: 'About Us')}
    it {should have_selector('title', text: "About Us | #{base_title}")}
  end

  describe "Contact page" do
    before{visit contact_path}
    it {should have_selector('h1', text: 'Contact')}
    it {should have_selector('title', text: "Contact | #{base_title}")}
  end
end
