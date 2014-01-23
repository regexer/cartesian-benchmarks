#!/usr/bin/env ruby
#

require 'benchmark'

array1 = (0..50).to_a
array2 = (0..50).to_a
array3 = (0..10).to_a
#require 'pry'; binding.pry

Benchmark.bm(10) do |x|
  x.report("cartesian") { 1000.times {array1.product( *[array2, array3])}}
end