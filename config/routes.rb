KanguruApp::Application.routes.draw do
  root to: "CurrentRecommendations#destination"
  
  get "recommendation" => "CurrentRecommendations#index", :as => "recommendation"
  post "recommendation" => "CurrentRecommendations#index", :as => "recommendation"
  
  get "test" => "CurrentRecommendations#test"
end
