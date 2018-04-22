class WelcomeController < ApplicationController
  def index  	
  	@whatnews = Whatnew.last(4)
  	@subjects = Subject.last(4)
  	@events = Event.last(4)
  end
end
