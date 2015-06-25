require "active_support"
require "active_support/inflector"

module DatabaseInstanceMethods

  # Get the value of a field for a given row.
  #
  # field - String of the column name.
  #
  # Returns the String value of the cell in the table.
  def get(field)

    table_name = self.class.to_s.pluralize.underscore

    result = CONNECTION.execute("SELECT * FROM #{table_name} WHERE id = #{@id}").first

    result[field]
  end

  def delete
    table_name = self.class.to_s.pluralize.underscore

    CONNECTION.execute("DELETE FROM #{table_name} WHERE id = #{@id}")
  end

  def save
    table = self.class.to_s.pluralize.underscore

    instance_variables = self.instance_variables

    attribute_hash = {}

    instance_variables.each do |variable|
      attribute_hash["#{variable.slice(1..-1)}"] = self.send("#{variable.slice(1..-1)}")
    end

    individual_instance_variables = []

    attribute_hash.each do |key, value|
      if value.is_a?(String)
        individual_instance_variables << "#{key} = '#{value}'"
      else
        individual_instance_variables << "#{key} = #{value}"
      end
    end

    for_sql = individual_instance_variables.join(', ')

    CONNECTION.execute("UPDATE #{table} SET #{for_sql} WHERE id = #{self.id}")

    return self
  end
end