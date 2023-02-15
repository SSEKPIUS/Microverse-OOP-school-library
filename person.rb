require './nameable'

# Create class person
class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age = 'Unknown', name,  parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end
  private :of_age?

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end
end
