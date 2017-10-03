require 'erb'

price = 8.75

line_1 = "Bill:   That will cost you $<%= price %> plus taxes, ma'am."
line_2 = "Pritma: How much is it with taxes?"
line_3 = "Bill: I don't know! I'm not very good at math."


puts
puts ERB.new(line_1).result
puts
puts line_2
puts
puts line_3
puts
