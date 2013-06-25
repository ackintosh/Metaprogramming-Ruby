def explorer_array(method, *arguments)
  ['a', 'b', 'c'].send(method, *arguments)
end

loop { p explorer_array(gets()) }
