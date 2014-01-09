# Instructions are written inline.
 
# docs you may enjoy
# http://www.ruby-doc.org/core-2.0/Hash.html
# http://ruby-doc.org/core-2.0/String.html
# http://ruby-doc.org/core-2.0/Array.html
 
# Every Morning I make a smoothie with the follow ingredients:
smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}
 
# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements) and chop up and mix all the characters
# and output a mixed string of characters
# Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!
 
def blend(smoothie_ingredients)
  mix_ingredients = smoothie_ingredients.keys.join.split(//).shuffle
  return mix_ingredients.join.delete(" ")
end

puts blend(smoothie_ingredients)
  

 
# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array
 
class Blender
  def initialize(smoothie_ingredients)
    @smoothie_ingredients = smoothie_ingredients
  end

  # Method that takes Hash and creates an Array of keys' characters
  # and then shuffles up all the characters
  def blend()
    grabs_items = @smoothie_ingredients.keys.join.split("").shuffle
    # Return takes new variable, joins all array characters into one line
    # and removes any spaces
    return grabs_items.join.delete(" ")
  end

    # Prints out the blend method only after user writes "yes" prompt
    def outcome()
        puts "Here is what you made, looks delicous . . ."
        puts blend
    end
    # User is prompted for "Yes" response
    # Downcase prompt to promise no capitalization problems
    def turnon()
      puts "You put ingredients in the blender."
      puts "Would you like to turn the blender on? If so type 'Yes'"
      prompt = gets.chomp.downcase

        # Until loop prompts for correct "Yes"/"yes" answer or keeps asking
        until prompt == "yes"
          puts "Sure you don't want to push 'Yes'?"
          prompt = gets.chomp.to_s.downcase               
        end
        # If until loop passed, run outcome method which then runs puts blend method
        outcome 
  end # End of blend method


end # End of class method

# make = new Blender Class that uses smoothie_ingredients Hash
make = Blender.new(smoothie_ingredients)
# Runs Turnon method
make.turnon()



