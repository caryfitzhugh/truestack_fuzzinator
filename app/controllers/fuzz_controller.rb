class FuzzController < ApplicationController
  def index
    sleep rand(10)
  end
  def exception
    raise "EXCEPTION!"
  end
  def action1
    Dummy.model_action1
    dumm = Dummy.new
    dumm.action
  end

  def action2
    Dummy.model_action2
  end
end
