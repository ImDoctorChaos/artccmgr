class Document < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :document_group

  validates :name, presence: true, allow_blank: false
  validates :document_url, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
end
