# Calculation without error
# Set up the equation x/10 = 50 to find the original percentage of execution time converted to fast mode
from sympy import symbols, Eq, solve

# Define the variable
x = symbols('x')

# Since 50% of the time is now fast, and it's 10 times faster, the original time was 10 times longer
# x/10 = 50% -> x = 500%
# But since we cannot have more than 100% of a given execution time, we need to find the correct x value
# for the equation x/10 + (100 - x) = 100

# Equation representing the relationship
equation = Eq(x/10, 50)

# Solve for x
original_execution_time_converted = solve(equation, x)

original_execution_time_converted[0]  # This will give us the percentage
