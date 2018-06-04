class Game

  def outcome(playerweap, computerweap, playername)
    if playerweap == "Rock" && computerweap == "Scissors"
      return "#{playername} wins!"
    elsif playerweap == "Paper" && computerweap == "Rock"
      return "#{playername} wins!"
    elsif playerweap == "Scissors" && computerweap == "Paper"
      return "#{playername} wins!"
    elsif playerweap == computerweap
      return "Draw"
    else
      return "Computer wins!"
    end
  end

end
