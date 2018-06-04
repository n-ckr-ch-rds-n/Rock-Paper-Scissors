class Game

  def outcome(playerweap, computerweap, playername)
    return "#{playername} wins!" if playerweap == "Rock" && computerweap == "Scissors"
    return "#{playername} wins!" if playerweap == "Paper" && computerweap == "Rock"
    return "#{playername} wins!" if playerweap == "Scissors" && computerweap == "Paper"
    return "It's a Draw!" if playerweap == computerweap
    return "Computer wins!"
  end

end
