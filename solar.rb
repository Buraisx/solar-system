class System
	def initialize
		@bodies = []
	end
	def add(celestials)
		if !@bodies.include?(celestials)
			@bodies << celestials
		else
			puts "This planet already exists."
		end
	end
	def total_mass
		total = 0
		@bodies.each do |body|
			total += body.mass
		end
		return total
	end
end

class Body
	def initialize(name, mass)
		@name = name
		@mass = mass
	end

	def mass
		@mass
	end

end

class Planet < Body
	def initialize(name, mass, day, year)
		super(name,mass)
		@day = day	
		@year = year
	end

end

class Star < Body
	def initialize(name,mass,type)
		super(name, mass)
		@type = type
	end
end

class Moon < Body
	def initialize(name,mass, month, planet)
		super(name, mass)
		@month = month
		@planet = planet
	end
end

imaginary = System.new
earth = Planet.new("Earth", 10 , 24,365)
sun = Star.new("Sun", 10, "G-type")
moon = Moon.new("moon", 10, 30, earth)
cybertron = Planet.new("Cybertron",10, 15, 32131)
genesis = Planet.new("Genesis",20,20,21321)

imaginary.add(earth)
imaginary.add(earth)
imaginary.add(sun)
imaginary.add(moon)
imaginary.add(cybertron)
imaginary.add(genesis)

puts imaginary.total_mass