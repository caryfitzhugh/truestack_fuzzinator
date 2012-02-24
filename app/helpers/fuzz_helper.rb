module FuzzHelper
  def helper_1
    sleep_for = rand(1.0)
    sleep sleep_for
    sleep_for
  end
  def helper_2
    sleep_for = rand(5.0)
    sleep sleep_for
    sleep_for
  end
end
