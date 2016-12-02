class PagesController < ApplicationController
  def index
    @societes = Societe.all
  end

  def societe
    @societes = Societe.all
  end

  def ressources
    @ressources = Ressource.all
  end

  def missions
    @missions = Mission.all
  end

  def contact

  end

end
