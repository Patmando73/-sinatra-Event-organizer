require_relative "database_class_methods"
require_relative "database_instance_methods"



class User
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  attr_accessor :id
  attr_accessor :name

  def initialize(options={})
    @id = options["id"]
    @name = options["name"]
  end











end