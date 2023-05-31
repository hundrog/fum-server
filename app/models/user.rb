class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  belongs_to :area
  
  has_many :current_boss_formats, class_name: "Format", foreign_key: "current_boss_id"
  has_many :vacant_boss_formats, class_name: "Format", foreign_key: "vacant_boss_id"
  has_many :vacant_coordinator_formats, class_name: "Format", foreign_key: "vacant_coordinator_id"

  enum role: [:user, :editor, :admin]

  scope :with_area_name, -> { joins(:area).select(QUERY) }

  QUERY='users.id, users.name, users.email, users.position, areas.name as area_name'.freeze

  private_constant :QUERY
end
