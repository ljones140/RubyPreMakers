M = 'land'
o = 'water'

world = [[o,o,o,o,o,o,o,o,M,M,M],
         [o,o,o,o,o,o,o,o,M,o,M],
         [o,o,o,o,o,o,o,o,M,o,M],
         [o,o,o,o,o,o,o,M,M,M,M],
         [o,o,o,M,M,M,M,o,o,o,o],
         [o,o,o,M,M,M,M,o,o,o,o],
         [o,o,o,M,M,M,M,o,o,o,o],
         [o,o,o,M,M,M,M,o,o,o,o],
         [o,o,o,o,o,o,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,o,o,o]]

def continent_size world, x, y
  if world[y][x] != 'land'
    #if water or counter land return 0  
    return 0
  end
  #otherwise count tile
  size = 1
  #set tile as counted so doesn't get counted again
  world[y][x] = 'counted land'
  #count all neighbouring tiles with recursion
  size = size + continent_size(world, x-1, y-1)  
  size = size + continent_size(world, x  , y-1)  
  size = size + continent_size(world, x+1, y-1)  
  size = size + continent_size(world, x-1, y  )  
  size = size + continent_size(world, x+1, y  )  
  size = size + continent_size(world, x-1, y+1)  
  size = size + continent_size(world, x  , y+1)  
  size = size + continent_size(world, x+1, y+1)  
  size
end

puts continent_size(world, 5, 5) 
