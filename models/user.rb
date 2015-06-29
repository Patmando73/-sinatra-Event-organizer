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
    results = CONNECTION.execute("SELECT p.name, COUNT(l.place_id) numoflikes FROM places p JOIN likes l on p.id = l.place_id WHERE l.user_id = #{@id} GROUP BY p.name ORDER BY COUNT(l.place_id) DESC;")
    place_names = []
    num_of_likes = []
    final_result = {}

    results.each do |name|
      place_names << name.values_at("name")
      num_of_likes << name.values_at("numoflikes")
    end

    final_place = place_names.join(' ')
    final_num = num_of_likes.join(' ')

    end_place = final_place.split
    end_num = final_num.split

    final_result = Hash[end_place.zip end_num]

    end_result = []

    final_result.each do |key, value|
      end_result << "#{key} - #{value}"
    end

    return end_result
  end
end






# results = CONNECTION.execute("SELECT p.name, COUNT(l.place_id) numoflikes FROM places p JOIN likes l on p.id = l.place_id GROUP BY p.name ORDER BY COUNT(l.place_id) DES