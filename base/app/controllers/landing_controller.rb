class LandingController < ApplicationController
  def hello
  end

  def test
  end

  def page(layout)
    s = String.new()
    layout.each do |part|
      s += render_to_string :partial => "#{part.to_s}.html.erb"
    end
    return s
  end

  def index 
    @application_name = "My great MVP" 
    @video_url = "http://www.youtube.com/embed/Exkt9KO56AU" #TODO-might want to set dimensions? #width="560" height="315" src="    

    @trial_expiry_date = Time.now + 1.month - 1.day
    @annual_membership_expiry = Time.now + 1.year - 1.day
  end

  def signup
    @application_name = "My great MVP"
    @trial_expiry_date = Time.now + 1.month - 1.day
    @annual_membership_expiry = Time.now + 1.year - 1.day
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
