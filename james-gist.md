# Quiz

https://gist.github.com/jamesdabbs/1e98b6bda58e13f6519e

# Koans

Download at either

* http://rubykoans.com/
* https://github.com/neo/ruby_koans

# Guessing Game

Here's what we ended up with:

```ruby
# Answerer selects a number 1..100
# Guesser gets 7 guesses to pick the right number
# Ask guesser for a guess
# Check guess to see if correct
# Tell guesser if they were correct, high, or low
# Repeat until correct or out of guesses

# Player class, Game class?
class Game
  def initialize
    @answer = rand 1..100
    @guesses_left = 7
    @status = 'playing' # 'won', or 'lost'
  end

  def finished?
    @status != 'playing'
  end

  def check_guess guess
    hot_or_cold guess
    @guesses_left -= 1
    if @guesses_left.zero? && @status != 'won'
      @status = 'lost'
    end
    @guess == @answer
  end

  def hot_or_cold guess
    if guess < @answer
      puts "Too low"
    elsif guess > @answer
      puts "Too high"
    else
      @status = 'won'
    end
  end

  # attr_reader :guesses_left
  def guesses_left
    @guesses_left
  end

  def status
    @status
  end
end

class Player
  def get_guess
    puts "What do you guess?"
    print "> "
    gets.chomp.to_i
  end
end

class DumbAI
  def get_guess
    guess = rand 1..100
    puts "Guessed: #{guess}"
    guess
  end
end

game = Game.new
player = DumbAI.new # Player.new

until game.finished?
  puts "You have #{game.guesses_left} guesses remaining"
  guess = player.get_guess
  game.check_guess guess
end
puts "Result: #{game.status}"
```

Some ideas for going further -

* Try writing something hangman from scratch similarly
* Add classes for players - human, random guessing, smart AI