class Person
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end

    def birthday
        @age += 1
    end
end
class Student < Person
    def student_ask
        puts "Aquí es la clase de programación con Ruby?"
    end    
    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name} y tengo #{@age}."
    end
end

class Teacher < Person
    def teacher_ask
        puts "Bienvenidos a la clase de programación con Ruby!"
    end
    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person
    def parent_ask
        puts "Aquí es la reunión de apoderados?"
    end
    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name} y y tengo #{@age}."
    end
end

s1 = Student.new('Marcela', 'Brenes', 20)
s1.introduce

t2 = Teacher.new('Sebastian','IDK', 32)
t2.introduce

p3 = Parent.new('Laura','Daniels',48)
p3.introduce