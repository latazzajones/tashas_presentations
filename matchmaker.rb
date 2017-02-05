#Original class
class MatchMaker
attr_reader :one_person, :another_person

  def initialize(one_person, another_person)
    @one_person = pair[0]
    @another_person = pair[1]
  end

  def good_match
    same_favorite_colors? &&
    similar_interestes? 
  end

  private

  def same_favorite_color?
    one_person[0] == another_person[0]
  end

  def similar_interestes? 
    (one_person[1] & another_person[1]) > 0
  end

end

max = ["red", ["hiking", "cooking"]]
logan = ["blue", ["football", "shopping"]]

MatchMaker.new(max , logan)

#Struct

class MatchMaker < Struct.new(pair)

  def good_match
    same_favorite_colors? &&
    similar_interests
  end

  def same_favorite_color?
    pair.first[0] == pair.last[0]
  end

  def similar_interestes? 
    (pair.first[1] & pair.last[1]) > 0
  end

end

max = ["red", ["hiking", "cooking"]]
logan = ["blue", ["football", "shopping"]]

MatchMaker.new(max , logan)


#Struct used propperly

class MatchMaker
attr_reader :one_person, :another_person

  def initialize(pair)
    @one_person = personify(pair.first)
    @another_person = personify(pair.last)
  end

  def good_match
    same_favorite_colors? &&
    similar_interestes? 
  end
  
  private

  def same_favorite_color?
    one_person.fav_color == another_person.fav_color
  end

  def similar_interestes? 
    (one_person.insterests & another_person.interests).count > 0
  end

  Person = Struct.new(:fav_color, :interests)
  def personify(data)
    Person.new(data[0], data[1])
  end
end

max = ["red", ["hiking", "cooking"]]
logan = ["blue", ["football", "shopping"]]

MatchMaker.new(max , logan)

