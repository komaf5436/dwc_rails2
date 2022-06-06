Rails.application.routes.draw do
  # URL「top」にアクセスすると、homesコントローラー内のtopアクションが実行される
  get '/top' => 'homes#top'
  # 投稿フォームを表示するためのルーティング
  get 'lists/new'
  # データを追加するためのルーティングを追記
  post 'lists' => 'lists#create'
  # 一覧表示するためのルーティング
  get 'lists' => 'lists#index'
  # .../lists/1や.../lists/3に該当する
  # 名前付きルートを設定することでわかりやすく
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  patch 'lists/:id' => 'lists#update', as: 'update_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
