class FuzzController < ApplicationController
  def action1
    Dummy.model_action1
  end

  def action2
    Dummy.model_action1
  end
end
