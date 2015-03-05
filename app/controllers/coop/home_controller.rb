class Coop::HomeController < Coop::CoopController
  def view
    @coop = coop
  end
end
