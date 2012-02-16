module ApplicationHelper

  # Return a title on a per-page basis.
  def title
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    image_tag("logo.png", :alt => "Missing Images App", :class => "round")
  end

  def main_background
    image_tag("bg_lite.jpg", :alt => "Background", :class => "main")
  end

end
