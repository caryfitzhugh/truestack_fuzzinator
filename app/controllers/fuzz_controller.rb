class FuzzController < ApplicationController
  def index
    sleep rand(10)
  end
  def exception
    raise "EXCEPTION!"
  end
  def action1
    Dummy.model_action1
    truestack_method("in_action1") do
      dumm = Dummy.new
      dumm.action
    end
  end

  def action2
    truestack_method("in_action2") do
      Dummy.model_action2
    end
  end

  def action3
    CalledModule.called_module_method
    cl = CalledClass.create_called_class
    truestack_method("in_action3") do
      cl.call_called_class
    end
  end
end
