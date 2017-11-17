require 'rails_helper'

RSpec.describe Document, type: :model do
  it 'has a valid factory' do
    expect(build(:document)).to be_valid
  end

  let(:document) { build(:document) }

  describe 'ActiveModel validations' do

    #Basic validations
    it { expect(document).to validate_presence_of(:name) }
    it { expect(document).to validate_presence_of(:document_url) }
    it { expect(document).to validate_presence_of(:description) }

  end
end
