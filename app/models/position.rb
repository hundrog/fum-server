class Position < ApplicationRecord
  has_many :current_position_formats, class_name: "Format", foreign_key: "current_position_id"
  has_many :new_position_formats, class_name: "Format", foreign_key: "new_position_id"
end
