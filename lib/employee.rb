class Employee < ActiveRecord::Base
# Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
  belongs_to :store

  #! Add validations to two models to enforce the following business rules:

# Employees must always have a first name present
  validates :first_name, presence: true

# Employees must always have a last name present
  validates :last_name, presence: true

# Employees have a hourly_rate that is a number (integer) between 40 and 200
  validates :hourly_rate, inclusion: {integer: 40..200 }
end
