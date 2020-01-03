# frozen_string_literal: true

module ENUMERABLE
  def my_each(arr)
    i = 0
    while i < arr.length
      yield arr[i]
      i += 1
    end
    to_enum(:my_each) unless block_given?
  end

  def my_each_with_index(arr);
    i = 0
    while i < arr.length
      yield arr[i], i
      i += 1
    end
  end

  def my_select(arr)
    i = 0
    new_arr = []
    while i < arr.length
      val = yield arr[i]
      new_arr.push(arr[i]) if val == true
      i += 1
    end
    new_arr
  end

  def my_all(arr)
    i = 0
    while i < arr.length
      val = yield arr[i]
      true unless val == false || val == nil
      i += 1
    end
  end

  def my_map(arr)
    i = 0
    while i < arr.length
      arr[i] = yield arr[i]
      i += 1
    end
    arr
  end

  def my_inject(accumulator)
    accumulator unless block_given?
    i = 0
    while i < arr.length
      yield accumulator, arr[i]
      i += 1
    end
  end
end

class Test
  include ENUMERABLE

  def multiply_els(arr)
    arr.my_inject(1) { |multiply, elem| puts multiply = multiply * elem }
  end
end

arr = [1,2,3]
run = Test.new
run.my_each(arr) {|i| puts i} # Working
run.my_each_with_index(arr) {|i,j| puts "#{i}:::#{j}"} # Working
print run.my_select(arr) {|i| i > 1} # working
puts ""
puts run.my_all(arr) {|i| i > 1}
puts run.my_map(arr) {|i| i*2} # Working
run.multiply_els(arr)