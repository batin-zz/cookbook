module ApplicationHelper

  def title
    if @title.present?
      "#{@title} | #{app_name}"
    else
      app_name
    end
  end
  
  private
  
  def app_name
    "Cook Book"
  end
end
