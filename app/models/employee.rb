class Employee < ApplicationRecord

  def initialize

  end

  def self.leadership_index
    Employee.where(in_leadership: true)
  end
end
