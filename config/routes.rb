TruestackFuzzinator::Application.routes.draw do
  root :to => "fuzz#index"
  get "/fuzz/1" => "fuzz#action1"
  get "/fuzz/2" => "fuzz#action2"
  get "/fuzz/3" => "fuzz#action3"
  get "/fuzz/exception" => "fuzz#exception"
end
