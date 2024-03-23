-- Challenge 1: Calculate the Sum of Two Numbers
function sum(a, b)
    return a + b
end

-- Challenge 2: Check if a Number is Even or Odd
function is_even(number)
    return number % 2 == 0
end

-- Challenge 3: Calculate the Area of a Rectangle
function rectangle_area(length, width)
    return length * width
end

-- Challenge 4: Reverse a String
function reverse_string(str)
    local reversed_str = ""
    for i = #str, 1, -1 do
        reversed_str = reversed_str .. string.sub(str, i, i)
    end
    return reversed_str
end

-- Challenge 5: Check if a String is Palindrome
function is_palindrome(str)
    local reversed_str = ""
    for i = #str, 1, -1 do
        reversed_str = reversed_str .. string.sub(str, i, i)
    end
    return str == reversed_str
end

-- Example usage
-- Feel free to uncomment the following lines to test each challenge individually

-- print("Challenge 1 - Sum of Two Numbers:", sum(5, 7))
-- print("Challenge 2 - Check if a Number is Even:", is_even(10))
-- print("Challenge 3 - Area of a Rectangle:", rectangle_area(5, 3))
-- print("Challenge 4 - Reversed String:", reverse_string("hello"))
-- print("Challenge 5 - Is Palindrome:", is_palindrome("racecar"))

