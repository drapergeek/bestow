class List < ActiveRecord::Base
  belongs_to :user

  has_many :invitations
  has_many :people, dependent: :destroy

  delegate :email, to: :user, prefix: true

  validates :name, presence: true
  validates :user, presence: true
end
