class ResultFight < ApplicationRecord
  belongs_to :user
  belongs_to :character, optional: true

  validates :global_smash_power, presence: true

end

