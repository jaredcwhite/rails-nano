Rails.application.routes.draw do
  scope "/backend" do
    resources :nano
  end
end
