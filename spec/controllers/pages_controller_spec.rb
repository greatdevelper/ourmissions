require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the title 'Home'" do
      visit '/pages/home'
      expect(page).to have_title("Our mission is alive | Home")
    end

    it "should have a non-blank body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the title 'Contact'" do
      visit '/pages/contact'
      expect(page).to have_title("Our mission is alive | Contact")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  it "should have the title 'About Us'" do
      visit '/pages/about'
      expect(page).to have_title("Our mission is alive | About Us")
    end

end
