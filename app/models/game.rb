# app/models/game.rb
class Game < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews
end

# app/models/user.rb
class User < ActiveRecord::Base
  has_many :reviews
  has_many :games, through: :reviews
end

# app/models/review.rb
class Review < ActiveRecord::Base
  belongs_to :game
  belongs_to :user
end
