class MyClass
  attr_accessor :my_attribute
#  def my_attribute=(value)
#    @my_attribute = value
#  end
#
#  def my_attribute
#    @my_attribute
#  end
end

obj = MyClass.new
obj.my_attribute = 'xxx'
puts obj.my_attribute
