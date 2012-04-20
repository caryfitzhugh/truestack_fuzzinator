class FuzzController < ApplicationController
  before_filter :add_a_metric

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

  def action3
    CalledModule.called_module_method
    cl = CalledClass.create_called_class
    cl.call_called_class
  end

  private
  def add_a_metric
    TruestackRails.metric('requests', 1, :random_data => SecureRandom.hex(4))
  end
end
