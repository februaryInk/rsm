class MaterialSizesController < ApplicationController
  def index
    @materials = Material.all
  end
end
