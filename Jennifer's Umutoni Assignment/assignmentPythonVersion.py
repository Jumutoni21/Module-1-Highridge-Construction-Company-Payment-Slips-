import random
# Function to generate employees

def generate_employees(num):
    employee_list = []
    genders = ["male", "female"]
    for i in range(1, num + 1):
        employee = {
            'name': f'employee {i}',
            'gender': random.choice(genders),
            'salary': random.randint(1000, 30000)
        }
        employee_list.append(employee)
    return employee_list

# Generating a list of employees

my_employee_list = generate_employees(400)
employee_level_A1 = []
employee_level_A5F = []
employee_with_no_level = []

# Classifying employees based on salary and gender

for employee in my_employee_list:
    if 7500 <= employee['salary'] <= 30000:
        if employee['gender'] == 'female':
            employee['level'] = "A5-F"
            employee_level_A5F.append(employee)
        elif 10000 <= employee['salary'] <= 20000:
            employee['level'] = "A1"
            employee_level_A1.append(employee)
        else:
            employee_with_no_level.append(employee)
    else:
        employee_with_no_level.append(employee)

# Displaying the results
        
print("\n All Employee List:")
for employee in my_employee_list:
    print(employee)

print("\n Employee with level A1 List:")
for employee in employee_level_A1:
    print(employee)

print("\n Employee with level A5-F List")
for employee in employee_level_A5F:
    print(employee)

print("\n Employee with no level List")
for employee in employee_with_no_level:
    print(employee)
print("\n")