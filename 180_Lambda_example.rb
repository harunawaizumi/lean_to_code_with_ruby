# less efficient
# you need to change all exchange rate every time when the rate changes.
def convert(dollars, currency)
  yield(dollars, currency) if dollars.is_a?(Numeric)
end

p convert(1000, "euros") {|dollars| dollars * 0.95 }
p convert(1000, "pesos") {|dollars| dollars * 20.67 }
p convert(1000, "rupees") { |dollars| dollars * 68.13 }

# more efficient
# if the exchange rate changes every time, you don't need to change all block
# you just need to change one lambda.

to_euros = lambda {|dollars| dollars * 0.95 }
to_pesos = lambda {|dollars| dollars * 20.67 }
to_rupees = lambda {|dollars| dollars * 68.13 }

p convert(1000, to_euros)
p convert(1000, to_pesos)
p convert(1000, to_rupees)
