Rails.application.routes.draw do
  resources :departamentos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "produtos", to: "produtos#index"

  # rota raiz do sistema
  root to: "produtos#index"

  # rotas para cadastrar produto
  #get "produtos/new", to: "produtos#new"
  #post "produtos", to: "produtos#create"
  #get "produtos/:id/remover", to: "produtos#destroy"
  #delete "produtos/:id", to: "produtos#destroy", as: :produto

  #resources todos para produto
  # resources :produtos

  # resources parcial
  resources :produtos, only: [:new, :create, :destroy, :edit, :update]

  get "produtos/busca", to: "produtos#busca", as: :busca_produto
end
