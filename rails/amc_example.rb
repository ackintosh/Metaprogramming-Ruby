class MyClass
  def greet
    puts "Hello!"
  end
end

class MyClass
  def greet_with_log
    puts "メソッド呼び出し開始..."
    greet_without_log
    puts "...メソッド呼び出し終了"
  end

  alias_method_chain :greet_without_log, :greet
  alias_method_chain :greet, :greet_with_log
end

MyClass.new.greet
