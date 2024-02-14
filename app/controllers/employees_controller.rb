class EmployeesController < ApplicationController
  def index
    @employees = Employee.leadership_index
    @employee = Employee.first
  end
end