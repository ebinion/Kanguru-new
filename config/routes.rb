KanguruApp::Application.routes.draw do
  root to: "CurrentRecommendations#destination"
  
  get "recommendation", :controller => "CurrentRecommendations" , :method => "index", :as => "recommendation"
end
