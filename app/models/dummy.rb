class Dummy < ActiveRecord::Base
  def self.model_action1
    sleep rand(1.0)
    Dummy.find(:all)
  end
  def self.model_action2
    sleep rand(5.0)
    Dummy.find(:all)
  end
end
