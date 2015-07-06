require 'yaml'

def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end
def yaml_load filename
  yaml_string = File.read filename
  YAML::load yaml_string
end

test_array = ['monkey',
              'cat',
              'badger']

filename = 'animals';

yaml_save(test_array, filename)
read_array = yaml_load(filename)

read_array.each do |animal|
  puts animal
end 
