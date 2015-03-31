# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Rails.env.production?
  connection = ActiveRecord::Base.connection
  # tables = %w(table1 table2 table3)
  # tables.each do |table|
  #   connection.execute("TRUNCATE #{table}") unless table == "schema_migrations"
  # end

  Dir.glob("db/sql/*.sql").each do |sql_file|
    sql = File.read(sql_file)
    statements = sql.split(/;$/)
    statements.pop  # the last empty statement
    ActiveRecord::Base.transaction do
      statements.each do |statement|
        connection.execute(statement)
      end
    end
  end
end
