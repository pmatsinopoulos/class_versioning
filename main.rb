class Dog
  def bark(how, name)
    puts "#{how.upcase} on #{name}"
  end

  def self.[](version)
    version = version.to_s.tr('.', '_')
    const_get("Dog#{version}")
  end
end

class Dog1_0 < Dog
  def bark(how)
    puts how.upcase
  end
end

class AngryDog < Dog[1.0]
  def make_sound
    bark 'baaaaaaaaaaaaaaaaaaaark bark'
  end
end

angry_dog = AngryDog.new
puts "angry_dog class: #{angry_dog.class}, super class: #{angry_dog.class.superclass}"
angry_dog.make_sound

class AnotherAngryDog < Dog
  def make_sound
    bark 'baaaaaaaaaaaaaaaaaark', 'John'
  end
end

angry_dog = AnotherAngryDog.new
puts "angry_dog class: #{angry_dog.class}, super class: #{angry_dog.class.superclass}"

angry_dog.make_sound


