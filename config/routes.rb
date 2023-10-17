Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "/menus/:name/(:sort_criteria)",
    to: 'menus#index',
    constraints: { sort_criteria: /|asc|desc/ },
    defaults: { sort_criteria: 'asc', format: 'json' }
end
