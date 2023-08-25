require 'flickr'

class StaticPagesController < ApplicationController
  def index
    if params[:flickr_user_id]
      flickr = Flickr.new
      photos = flickr.people.getPhotos(user_id: params[:flickr_user_id])
      puts photos.to_json

      @photo_urls = photos.map do |photo|
        "https://live.staticflickr.com/" + photo.server + "/" + photo.id + "_" + photo.secret + "_q.jpg"
      end

      p @photo_urls
    end
  end
end
