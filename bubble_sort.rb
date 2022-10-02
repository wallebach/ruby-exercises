numbers = [4, 3, 78, 2, 0, 2]

def bubble_sort(numbers) 
    numbers.each_with_index do | a, index_a |
        for index_b in (index_a + 1 .. numbers.length - 1) do 
            left_value = numbers[index_a]
            right_value = numbers[index_b]
            if left_value > right_value
                temp_value = left_value
                numbers[index_a] = right_value 
                numbers[index_b] = temp_value
            end
        end
    end
    numbers
end

p bubble_sort(numbers)

