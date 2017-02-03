class MatchMaker
attr_reader :one_person, :another_person

  def initialize(one_person, another_person)
    @one_person = one_person
    @another_person = another_person
  end

  def good_match
    same_favorite_colors? &&
    similar_interestes? 
  end

  private

  def same_favorite_color?
    one_person.favorite_color == another_person.favorite_color?
  end

  def similar_interestes? 
    (one_person.interests & another_person.interest) > 0
  end

end
