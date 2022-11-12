class Entry < ApplicationRecord
  belongs_to :account
  belongs_to :creator
  delegated_type :entryable, types: %w[ Message Comment ]
end
