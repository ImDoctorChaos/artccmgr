require 'rails_helper'

RSpec.describe DocumentGroup, type: :model do

  it 'has a valid factory' do
    expect(build(:document)).to be_valid
  end

  let(:document_group) { build(:document_group) }


end
