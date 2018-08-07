class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  attr_accessor :name, :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def self.create_table
     sql = "CREATE TABLE IF NOT EXISTS student(id INTEGER PRIMARY KEY, name TEXT, grade INTEGER);"
     DB[:conn].execute(sql)
  end


end
