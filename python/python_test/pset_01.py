import numpy as np

def calculate_end(guess_input, annual_salary_input):
        percentage_saved = guess_input/10000
        current_savings = 0
        months = 0
        for months in range(36):
            current_savings += current_savings * annual_return/12
            current_savings += annual_salary_input/12 * percentage_saved
            if months % 6 == 0 and months != 0:
                annual_salary_input += annual_salary_input * semi_annual_raise
#        print("the guess of", guess_input, "returned", current_savings)
        return current_savings

semi_annual_raise = 0.07
annual_return = .04
percentage_down_payment = 0.25
house_cost = 1000000
down_payment = house_cost * percentage_down_payment

guess = 5000 # initial guess is 500, this will be  a value between 0 and 1000 using float division
minimum_bound = 0
maximum_bound = 10000
minimum_answer = int(down_payment - 100)
maximum_answer = int(down_payment + 100)
# print("the minimum acceptable answer is ", minimum_answer)
# print("the maximum acceptable answer is ", maximum_answer)
i = 1



annual_salary = int(input("Enter Annual Salary: "))

if down_payment > calculate_end(10000, annual_salary):
#   print("Answer Does Not Exist")
    exit()
else:
#    print("")
#    print("")
#    print("Testing ", guess, " basis points")
#    print("this is guess number: ", i)
    return_value = int(calculate_end(guess, annual_salary))
#    print(type(return_value))
#    print(type(maximum_answer))
#    print(type(minimum_answer))
#    print(bool(return_value < minimum_answer))
#    print(bool)
    while return_value < minimum_answer or return_value > maximum_answer:
        if return_value < minimum_answer:
            minimum_bound = guess
            guess = int((guess + maximum_bound)/2)
#            print("")
#            print("")
#            print("adjusting minimum bound")
#            print("minimum bound: ", minimum_bound)
#            print("maximum bound: ", maximum_bound)
#            print("")
#            print("")
        if return_value > maximum_answer:
            maximum_bound = guess
            guess = int((guess + minimum_bound)/2)
#            print("")
#            print("")
#            print("adjusting maximum bound")
#            print("minimum bound: ", minimum_bound)
#            print("maximum bound: ", maximum_bound)
#            print("")
#            print("")
        i += 1
        if maximum_bound == minimum_bound + 1:
             guess = maximum_bound
             break
#        print("Testing ", guess, "basis points")
#        print("this is guess number: ", i) 
        return_value = calculate_end(guess, annual_salary)

print("You need to save ", float(guess*100/10000), "percent which will result in ", np.round(return_value, 2, None), " in savings!")
print("The bisection search took ", i, " steps!")
