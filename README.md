This [project](https://www.theodinproject.com/lessons/ruby-on-rails-flickr-api) is part of the APIs section in [The Odin Project](http://www.theodinproject.com)’s Ruby on Rails curriculum.

This simple app's purpose was to learn how to work with external APIs. After entering [Flickr](https://www.flickr.com/) user's ID, it displays their public photo feed. The app uses ``flickr`` gem for communicating with their API and ``figaro`` gem for API key and secret.

This project uses Ruby v3.2.2 and Rails v7.0.6.

## How to run

1. Clone this repo and change into folder
    ```
    git clone git@github.com:sindpet/flickr-api.git
    cd flickr-api
    ```
1. Install dependencies
    ```
    bundle install
    ```
1. Get non-commercial Flickr API key by [creating an app](https://www.flickr.com/services/apps/create/apply/), then add ``config/application.yml`` file with the following content:
    ```
    FLICKR_API_KEY: <your_api_key>
    FLICKR_SHARED_SECRET: <your_shared_secret>
    ```
1. Start the server
    ```
    rails s
    ```
1. Enter ID of some user with public photo feed. User ID is available through the URL of the user's profile, which has the format of ``https://www.flickr.com/photos/<user_id>/``.
