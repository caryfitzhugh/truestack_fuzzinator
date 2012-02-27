class FuzzController < ApplicationController
  def index
    sleep rand(10)
  end
  def action1
    Dummy.model_action1
  end

  def action2
    Dummy.model_action1
  end
end
