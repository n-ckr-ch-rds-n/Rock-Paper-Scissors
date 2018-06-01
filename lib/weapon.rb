class Weapon
  def pick
    return "Rock" if rand(3) + 1 == 1
    return "Paper" if rand(3) + 1 == 2
    return "Scissors" if rand(3) + 1 == 3
  end
end
