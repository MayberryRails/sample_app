class PagesController < ApplicationController

  def home
    @title = "Home"
  end

  def contact
    @title = "contact us"
  end

  def about
    @title = "about us"
  end

end
