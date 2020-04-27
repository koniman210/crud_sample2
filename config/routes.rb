Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#新規投稿
  get '/users/new', to: 'users#new'
#新規登録
post '/users', to: 'users#create'
#一覧画面へ
get '/users', to: 'users#index'
#編集
get '/users/:id/edit', to: 'users#edit'
#更新
patch '/users/:id', to: 'users#update'

#削除
delete '/users/:id', to: 'users#destroy'
end
