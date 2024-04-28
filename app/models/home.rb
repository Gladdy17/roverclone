class Home < ApplicationRecord
  attribute :service, :integer, default: 0

  # Enum mapping
  SERVICES = { homesitting: 0, housesitting: 1, dvisits: 2 }.freeze

  # Validate presence of service and other attributes
  validates :service, inclusion: { in: SERVICES.values }
  validates :dob, presence: true
  validates :edod, presence: true
  validates :animal_type, presence: true
  validates :costmaxmin, presence: true
  validates :scales, inclusion: { in: [true, false] }
  validates :yard, inclusion: { in: [true, false] }
  validates :no_dog, inclusion: { in: [true, false] }
  validates :no_cat, inclusion: { in: [true, false] }
  validates :one_client, inclusion: { in: [true, false] }
  validates :non_neutered_dogs, inclusion: { in: [true, false] }
end
