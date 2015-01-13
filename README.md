Day 7 - Fun and Games
===============

![img](https://s3.amazonaws.com/giphymedia/media/CWLR2GMS9chhK/giphy.gif)

At this point, you should be able to define classes that create objects with
both behavior and data. The cononical version of this is the Rock Paper Scissors
implementation.

Code outline for you to complete:

```ruby

class Game
  attr_accessor :player_one_choice, :computer
end

game = Game.new
game.play
```

Code you'll want to use:

```ruby
selection = %w(rock paper scissors).sample
```


Normal Mode
-----

* The game should ask player 1 for their choice of "rock", "paper", or "scissors". (use `gets`)
* The game should then randomly select the computer's selection
* The game then outputs who won in this format: "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"
* Rock beats scissors
* Paper beats Rock
* Scissors beats Paper

Extreme Mode
-----------

* Instead of asking the player for their choice, have the computer automatically
  randomly select both the player and computer
* run the simulation 1000 times
* Track who which choice wins the most often

