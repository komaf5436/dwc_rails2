Rails.application.routes.draw do
  get 'lists/new'
  # データを追加するためのルーティングを
  post 'lists' => 'lists#create'
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'
  # URL「top」にアクセスすると、homesコントローラー内のtopアクションが実行される
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
