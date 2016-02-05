# Add your solution here

{
  zero: 0,
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5,
  six: 6,
  seven: 7,
  eight: 8,
  nine: 9
}.each do |word, digit|
  define_method(word) do |operation=nil|
    if operation
      eval("#{digit} #{operation}")
    else
      digit
    end
  end
end

{
  plus: '+',
  minus: '-',
  times: '*',
  divided_by: '/'
}.each do |name, operator|
  define_method(name) do |operand|
    " #{operator} #{operand}"
  end
end
