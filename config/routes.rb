Rails.application.routes.draw do
  get('/honeydos',      { to: 'honeydos#index' })
  get('/honeydos/new', { to: 'honeydos#new' })
  get('/honeydos/:id',  { to: 'honeydos#show' })
end
