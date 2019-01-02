class SearchController < ApplicationController

  def index
  end

  def show
    @facade = CharacterFacade.new(params[:q])
    @facade.find_character
  end

end
