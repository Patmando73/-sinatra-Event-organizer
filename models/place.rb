require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"

class Place
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  attr_accessor :id, :name, :attractions, :age_requirement, :hours_of_operation, :address, :parking_garage

  def initialize(options={})
    @id = options["id"]
    @name = options["name"]
    @attractions = options["attractions"]
    @age_requirement = options["age_requirement"]
    @hours_of_operation = options["hours_of_operation"]
    @address = options["address"]
    @parking_garage = options["parking_garage"]
  end
end

