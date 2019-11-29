# -*- encoding : utf-8 -*-
# Here you can override or add to the pages in the core website

Rails.application.routes.draw do
  # brand new controller example
  # get '/mycontroller' => 'general#mycontroller'
  # Additional help page example
  get '/aide/cada' => 'aide#cada'
  get '/aide/model' => 'aide#model'
end
