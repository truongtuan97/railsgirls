require 'rails_helper'

RSpec.describe Idea, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:comments) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
  end

  it 'has a name' do
    idea = Idea.create!(name: 'My Awesome Idea Name')
    expect(idea.name).to eq('My Awesome Idea Name')
  end
end
