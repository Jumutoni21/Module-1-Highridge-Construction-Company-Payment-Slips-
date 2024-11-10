# Function to generate employees

generate_employees <- function(num) {
  employee_list <- list()
  genders <- c("male", "female")
  
  for (i in 1:num) {
    employee <- list(
      name = paste("employee", i),
      gender = sample(genders, 1),
      salary = sample(1000:30000, 1)
    )
    employee_list[[i]] <- employee
  }
  return(employee_list)
}

# Generating a list of employees

my_employee_list <- generate_employees(400)
employee_level_A1 <- list()
employee_level_A5F <- list()
employee_with_no_level <- list()

# Classifying employees based on salary and gender

for (employee in my_employee_list) {
  if (employee$salary >= 7500 && employee$salary <= 30000) {
    if (employee$gender == "female") {
      employee$level <- "A5-F"
      employee_level_A5F <- append(employee_level_A5F, list(employee))
    } else if (employee$salary >= 10000 && employee$salary <= 20000) {
      employee$level <- "A1"
      employee_level_A1 <- append(employee_level_A1, list(employee))
    } else {
      employee_with_no_level <- append(employee_with_no_level, list(employee))
    }
  } else {
    employee_with_no_level <- append(employee_with_no_level, list(employee))
  }
}

# Displaying the results

cat("\n All Employee List: \n")
print(my_employee_list)

cat("\n Employee with level A1 List: \n")
print(employee_level_A1)

cat("\n Employee with level A5-F List: \n")
print(employee_level_A5F)

cat("\n Employee with no level List: \n")
print(employee_with_no_level)
cat("\n")
