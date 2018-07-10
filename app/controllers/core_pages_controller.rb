class CorePagesController < ApplicationController
  def about
  end

  def home
    @photos = Photo.order( 'RANDOM()' ).limit( 8 )
  end

  def order
  end
end
