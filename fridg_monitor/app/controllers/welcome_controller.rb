class WelcomeController < ApplicationController

  def index
    @names = ['Keith', 'Dan', 'Andy', 'Greg'].sort
  end

end