require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"
class Like
  extend DatabaseClassMethods
  include DatabaseInstanceMethods

  attr_accessor :id, :place_id, :user_id
  def initialize(options={})
    @id = options["id"]
    @place_id = options["place_id"]
    @user_id = options["user_id"]
  end
end