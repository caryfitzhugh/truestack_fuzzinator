class CalledClass
  def self.create_called_class
    CalledClass.new
  end
  def call_called_class
    sleep rand(1)
  end
end
