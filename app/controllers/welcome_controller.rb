class WelcomeController < ApplicationController
  def index
    @images = Image.find :all
  end

end
