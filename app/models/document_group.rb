class DocumentGroup < ApplicationRecord

  has_many :documents

  before_destroy :ensure_no_documents

  validates :name, presence: true, uniqueness: { case_sensitive: false }

  def ensure_no_documents
    unless documents.empty?
      self.errors[:name] << 'There are still documents in this group'
      throw :abort
    end
  end
end
