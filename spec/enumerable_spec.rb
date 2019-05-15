#enumerable.rb
require './enumerable.rb'
include Enumerable

my_array = [1,2,3,4,5]
i = 1
j = 1
any = false
all = false
true_cases = 0

RSpec.describe Enumerable do 

    describe "#my_each" do
        it "Iterates over the entire array" do 
            my_array.my_each{|value| 
                true_cases += 1 if value == i
                i +=1
             }
             expect(true_cases).to eql(5)
             true_cases = 0
             i = 1
        end

    end
    describe "my_each_with_i" do
        it "Iterates over the array and fills a avariable with the index of every item" do
            my_array.my_each_with_i{|value,i|
                true_cases += 1 if value == j && i == true_cases
                j += 1
            }
            expect(true_cases).to eql(5)
            true_cases = 0
            i = 1
            j = 1
        end
    end

    describe "#my_any?" do
        it "Returns a true if any member of the array comply the conditions" do
            any = my_array.my_any?{|value|
                value == 2
            }
            expect(any).to eql(true)
            any = false

        end
    end

    describe "#my_all?" do
       it "Retruns true if every member of the array complies the condition" do
            all = my_array.my_all?{|value|
                value >= 1
            }   
            expect(all).to eql(true)
            all = false
        end
    end

    describe "#my_none?" do
        it "Returns true if none member of the array comply the condition" do
            all = my_array.my_none?{|value|
                value <= 0
            }
            expect(all).to eql(true)
        end
    end

    describe "#my_map" do
        it "Returns an array with the members of the array that comply the condition" do
            my_new_array = my_array.my_map{|value|
                value >= 1
            }
            
            expect(my_new_array).to eql(my_array)
        end

    end

end
