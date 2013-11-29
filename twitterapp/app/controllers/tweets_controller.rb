class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
    @tweet = Tweet.new

    respond_to do |format|
      format.html
      # format.json {render :json => @tweets }
    end
  end

  def create
    new_tweet = Tweet.create(params[:searchterm])
    redirect_to new_tweet_path
  end

  def get_tweet
     @search = Twitter.search(params[:searchterm], :count=>5)
     # render :json => @search
    render :index
    # @search = Twitter.create
  end



end


