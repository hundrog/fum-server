class Format < ApplicationRecord
  belongs_to :current_position, class_name: 'Position'
  belongs_to :new_position, class_name: 'Position'
  belongs_to :current_boss, class_name: 'User'
  belongs_to :vacant_boss, class_name: 'User'
  belongs_to :vacant_coordinator, class_name: 'User'
end
