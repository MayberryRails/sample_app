require 'spec_helper'

describe PagesController do
  include RSpec::Rails::ControllerExampleGroup
  render_views

  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      #noinspection RubyResolve
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                                    :content => "#{@base_title} | Home")
    end

    it "should have a non-blank body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      #noinspection RubyResolve
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
                                    :content => "#{@base_title} | contact us")
    end

    it "should have a non-blank body" do
      get 'contact'
      response.should_not =~ /<body>\s*<\/body>/
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      #noinspection RubyResolve
      response.should be_success
    end
    it "should have the right title" do
      get 'about'
      response.should have_selector("title",
                                    :content => "#{@base_title} | about us")
    end

    it "should have a non-blank body" do
      get 'about'
      response.should_not =~ /<body>\s*<\/body>/
    end
  end

  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      #noinspection RubyResolve
      response.should be_success
    end
    it "should have the right title" do
      get 'help'
      response.should have_selector("title",
                                    :content => "#{@base_title} | Help")
    end

    it "should have a non-blank body" do
      get 'help'
      response.should_not =~ /<body>\s*<\/body>/
    end
  end

end
