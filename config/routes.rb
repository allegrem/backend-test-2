Rails.application.routes.draw do
  post 'answer' => 'calls#answer'
  post 'log' => 'calls#log', as: 'log_call'
  post 'voicemail' => 'calls#voicemail', as: 'save_voicemail'
  post 'end_dial' => 'calls#end_dial', as: 'end_dial'

  get 'logs' => 'calls#index'

  root 'calls#index'
end
