require 'csv'
require 'pry'

course = CSV.read('course.csv')

#Unit has overall order 
course.each_with_index do |line, index|
    order = index + 1
    if line[0] == "unit"


    binding.pry 
end 
