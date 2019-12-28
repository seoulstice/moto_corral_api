Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :corrals do
        controller :closest do
          get "/closest_corral" => :show
          get "/closest_corrals" => :index
        end
      end
      resources :corrals, only: %i[show index]
    end
  end
end
