Rails.application.routes.draw do
  get 'entries/index'
  root "entries#index"
end
