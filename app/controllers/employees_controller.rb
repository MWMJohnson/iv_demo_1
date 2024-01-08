class EmployeesController < ApplicationController
  def index
    @employees = Employee.leadership_index
  end
end