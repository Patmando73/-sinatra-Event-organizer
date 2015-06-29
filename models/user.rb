require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"



class User
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  attr_accessor :id
  attr_accessor :name

  # initialize an instance of the user class
  #
  # @id = primary key from database
  # @name = a string, name of user.

  def initialize(options={})
    @id = options["id"]
    @name = options["name"]
  end



  def users_likes
    results = CONNECTION.execute("SELECT * FROM likes WHERE user_id = #{@id}")
  end
end