class OrangeTree

  def initialize
    @age    = 0
    @height = 0
    @orange_count  = 0
  end

  def count_the_oranges
    puts @age > 2 ? "there are #{@orange_count} oranges" : "This tree is too young to grow fruit."
 #   one_year_passes
  end

  def pick_an_orange
    if @orange_count > 0 
      puts  "The orange was delicious"
      @orange_count -= 1
    else
      puts "There are no oranges to pick"
    end
 #   one_year_passes   
  end

#  private
  
  def one_year_passes
    @orange_count   = 0
    @height += 1
    @age    += 1   
    if @age >= 20 #tree life span is over :(
      puts "the old tree has died. May the circle of life continue....."
      exit
    end
    if @age > 2 #tree can grow fruit
      @orange_count = @age * @height
    end  
  end

end

tree = OrangeTree.new
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
