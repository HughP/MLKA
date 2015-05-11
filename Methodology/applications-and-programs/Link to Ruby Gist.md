https://gist.github.com/chadbrewbaker/3fd1e7efd0277987f05b


 
def mutation
 
end
 
 
def crossover
 
end
 
def cartesian_distance (c1, c2)
 Math.sqrt( ((c2.x - c1.x)**2) + ((c2.y - c1.y)**2) )
end
 
def fitts_distance( a , b)
  Math.log( 2 * cartesian_distance(a.coord, b.coord) / b.diameter ) / Math.log(2)
end
 
def calc_fitness
 
end
 
 
def read_corpus
    @markov = Hash.new(1) #returns 1 as a default epsilon count
    @letters = Hash.new(false) 
   
    # example string "Food"
    # @markov.["Fo"]++,  @markov.["oo"]++  , @markov.["od"]++
    # @letters["F"] = true, @letters['o'] = true, @letters['o'] = true, @letters['d'] = true
   
    # do some normalization on @markov so you get rows/cols that sum to 1.0
end
 
 
def read_key_layout
   #default iphone mobile layout?
 
end
 
def initalize_population
end
 
def roulette selection()
end
 
def evolve( n)
   read_corpus()
   read_key_layout()
   initalize_population()
   
   0.upto(n) {|i|
     crossover()
     mutation()
     calc_fitness()
     roulette selection()
   }
   print calc_fitness()
end
