class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all.order( :code )
    @collections = Collection.joins( :artwork_collections ).order( :name ).uniq
  end
end
