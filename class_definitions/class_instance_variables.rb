class MyClass
  @my_var = 1

  def self.read
    @my_var
  end

  def write
    @my_var = 2
  end

  def read
    @my_var
  end
end

obj = MyClass.new

puts obj.read     # nil
obj.write
puts obj.read     # 2
puts MyClass.read # 1
