class LandingController < ApplicationController
  def hello
  end

  def page(layout)
    s = String.new()
    layout.each do |part|
      s += render_to_string :partial => "#{part.to_s}.html.erb"
    end
    return s
  end

  def index 
    @video_url = "http://www.youtube.com/embed/FbfqbEG4-ng"
    #width="560" height="315" src="
    @application_name = "My great MVP"
  end

  def home
    render :text => (page ([
      :menu , 
      :menu , 
      :menu 
    ]))

    #section :menu
    #section :main  
    #section :welcome
    #section :video

    #section :features
    #section :pricing , pricing=>price_list
  end
end
