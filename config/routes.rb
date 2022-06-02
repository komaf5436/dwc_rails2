Rails.application.routes.draw do
  # URL「top」にアクセスすると、homesコントローラー内のtopアクションが実行される
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
