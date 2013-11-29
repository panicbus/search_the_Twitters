Twitterapp::Application.routes.draw do
  root :to => "tweets#index"

  resources :tweets

  get "/tweet" => "tweets#get_tweet"

end
