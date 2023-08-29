require 'flickr'

class StaticPagesController < ApplicationController
  def index
    if params[:flickr_user_id]
      flickr = Flickr.new
      photos = flickr.people.getPhotos(user_id: params[:flickr_user_id])

      @photo_urls = photos.map do |photo|
        "https://live.staticflickr.com/" + photo.server + "/" + photo.id + "_" + photo.secret + "_q.jpg"
      end
    end
  end
end
