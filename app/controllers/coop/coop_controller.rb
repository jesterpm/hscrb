class Coop::CoopController < ApplicationController
  before_filter :find_coop
  
  attr_reader :coop
  attr_reader :current_year
  
  protected
  def find_coop
    @coop = Coop.find_by(slug: params[:slug])
    @current_year = Year.find(6)
  end
end
