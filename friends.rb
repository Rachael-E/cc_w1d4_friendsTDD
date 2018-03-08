def get_name(person)
  return person[:name]
end

def get_favshow(person)
  return person[:favourites][:tv_show]
end

def get_food(person, food_liked)
  # p person[:name] + " likes " + person[:favourites][:things_to_eat].to_s
  for food in person[:favourites][:things_to_eat]
    # p person[:name] + " likes "+ food+ " is it same as "+ food_liked
    if food == food_liked
      # p "i'll return true"
      return true
    end
  end
  # p "i'll return false"
  return false
end

def new_friend(person, new_friend_name)
  person[:friends].unshift(new_friend_name)
p person[:friends].length

end

def bad_friend(person, bad_friend_name)
  person[:friends].shift # for specific friend .delete and index number
  p person[:friends].length

end

def total_cash(people)
  total_cash = 0

  for money in people
    total_cash += money[:monies]
  end
    return total_cash.to_i

end

def allow_loan(lendee, lender, amount)
# if lendee loses 20, lender gains 20
 lendee[:monies] -= amount
 lender[:monies] += amount


end


def no_friends(people)
  no_friends = 0

  for person in people
    no_friends == [:friends]
    return person[:name]
  end
end
