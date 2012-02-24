TruestackFuzzinator::Application.routes.draw do
  get "/fuzz/1" => "fuzz#action1"
  get "/fuzz/2" => "fuzz#action2"
end
