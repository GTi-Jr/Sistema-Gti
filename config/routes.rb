Rails.application.routes.draw do
  devise_for :members, controllers:{
    sessions: 'members/sessions',
    passwords: 'members/passwords',
    registrations: 'members/registrations',
    omniauth: 'members/omniauth',
    confirmations:'members/confirmations'
  },
  # resources :members
  path: "/",
  path_names:{
    sign_in: 'logar',
    sign_out: 'deslogar',
    sign_up: 'cadastro',
    password: 'secret',
    unlock: 'unblock',
    # registration: 'inscription'
    # sign_up: 'new'
  }
  # :skip => 'registration',
  devise_scope :member do
    authenticated :member do
      root to: 'member_dashboard#index',  as: :authenticated_member_root
      unauthenticated :users do
        root to: "members/sessions#new", as: :unauthenticated_member_root
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
