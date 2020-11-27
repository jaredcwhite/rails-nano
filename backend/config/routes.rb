Rails.application.routes.draw do
  scope "/backend" do
    resources :nano
    
    get "/products/*id" => "products#show"
  end
end
