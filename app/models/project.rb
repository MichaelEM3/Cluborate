class Project < ActiveRecord::Base
  belongs_to :club
  has_many :tasks, dependent: :destroy

  validates :name, :description, :location, presence: true
end
