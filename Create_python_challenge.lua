-- Lua code to create a challenge for users to input Python code

-- Define the challenge function
local function create_python_challenge(prompt, expected_output)
    -- Print the prompt
    print(prompt)
    
    -- Define the Python function placeholder
    local python_function = "def python_challenge():\n    pass"
    
    -- Print instructions for the user
    print("Write Python code to achieve the task. Replace 'pass' with your code.")
    
    -- Loop until the user provides a valid Python function
    local user_input = ""
    while true do
        -- Prompt the user to input Python code
        io.write("Your Python code: ")
        user_input = io.read()
        
        -- Check if the user input contains the Python function definition
        if string.find(user_input, "def python_challenge%(%):") then
            -- Replace the placeholder with user's input
            python_function = user_input
            break
        else
            print("Invalid input. Please define a function named 'python_challenge' without any arguments.")
        end
    end
    
    -- Execute the user's Python code
    local python_code = python_function .. "\nprint(python_challenge())"
    local python_output = os.capture("python3 -c '" .. python_code:gsub("'", "'\\''") .. "'")
    
    -- Check if the output matches the expected output
    if python_output == expected_output then
        print("Congratulations! You have successfully completed the challenge.")
    else
        print("Sorry, your output did not match the expected output.")
    end
end

-- Example challenge: Print "Hello, World!" to the console.
-- create_python_challenge("Print 'Hello, World!' to the console.", "Hello, World!\n")
