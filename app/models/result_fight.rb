class ResultFight < ApplicationRecord
  belongs_to :user
  belongs_to :character, optional: true
end
