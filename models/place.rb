require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"

class Place
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  attr_accessor :id
  attr_accessor :name

  def initialize(options={})
    @id = options["id"]
    @name = options["name"]
    @attractions = options["attractions"]
    @age_requirement = options["age requirement"]
    @hours_of_operation = options["hours_of_operation"]
  end
end








# address
# parking garage - boolean