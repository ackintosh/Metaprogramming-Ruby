def add_method(a_class)
  a_class.class_eval do
    def m; 'Hello!'; end;
  end
end

add_method String
puts "abc".m    # Hello!
