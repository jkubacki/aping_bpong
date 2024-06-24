require './lib/aping_bpong/number_to_output'

TIMES = 100

(1..TIMES).each do |number|
  puts ApingBpong::NumberToOutput.call(number:)
end
