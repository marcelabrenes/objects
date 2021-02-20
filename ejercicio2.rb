class Animal
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end
    
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Bird  < Animal
end

class  Mammal < Animal
end

class Insect < Animal
end

class Penguin < Bird
    include Habilidades::Nadador, Habilidades::Caminante, Alimentacion::Carnivoro
end

class Dove < Bird
    include Habilidades::Volador, Habilidades::Caminante, Alimentacion::Herbivoro
end

class Duck < Bird
    include Habilidades::Volador, Habilidades::Nadador, Habilidades::Caminante, Alimentacion::Herbivoro, Alimentacion::Carnivoro
end

class Dog < Mammal
    include Habilidades::Nadador, Habilidades::Caminante, Alimentacion::Carnivoro 
end

class Cat  < Mammal
    include Habilidades::Nadador, Habilidades::Caminante, Alimentacion::Carnivoro
end

class Cow < Mammal
    include Habilidades::Caminante, Alimentacion::Herbivoro
end

class Fly < Insect
    include Habilidades::Volador, Habilidades::Caminante, Alimentacion::Herbivoro, Alimentacion::Carnivoro
end

class Butterfly < Insect
    include Habilidades::Volador, Alimentacion::Herbivoro, Alimentacion::Carnivoro
end

class Bee < Insect
    include Habilidades::Volador, Alimentacion::Herbivoro
end

#En la terminal
#require_relative 'clases'
#doggy = Dog.new('dog')
#doggy.nadar
#butter = Butterfly.new('morph')
#butter.comer