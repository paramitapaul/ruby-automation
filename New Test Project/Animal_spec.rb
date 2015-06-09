require 'rspec'
require_relative 'animal'

describe 'Testing Animal class' do

  context 'Testing name' do
    it 'should get initialized name' do

      #Create Animal class object and initialized it
      #pass some variable to the constructor
      animal = Animal.new('dino',4)

      #get the name value
      nameValue = animal.getName

      #and check that it is correct
      puts nameValue

    end
    it 'should get set name' do

      #set the name value
      animal1 = Animal.new('dino',4)
      animal1.setName('max')

      #and check that it is correct
      puts "#{animal1.getName}"

    end
  end

  context 'Testing age' do

  it 'should get initialized age' do

    #Create Animal class object and initialized it
    #pass some variable to the constructor
     animal2 = Animal.new('dino',4)

    #get the name value
     ageValue = animal2.getAge

    #and check that it is correct
    puts ageValue

  end
  it 'should get set age' do

    #set the name value
    animal3 = Animal.new('dino',4)
    animal3.setAge(5)

    #and check that it is correct
    puts "#{animal3.getAge}"

  end
    end
end