require 'spec_helper'
require 'calculator'

RSpec.describe Calculator do
  subject { Calculator.new(10, 5) }

  describe '#sum' do
    it 'returns sum of two numbers' do
      expect(subject.sum).to eq 15
    end
  end

  describe '#subtraction' do
    it 'returns subtraction of two numbers' do
      expect(subject.subtraction).to eq 5
    end
  end

  describe '#multiplication' do
    it 'returns multiplication of two numbers' do
      expect(subject.multiplication).to eq 50
    end
  end

  describe '#division' do
    it 'returns division of two numbers' do
      expect(subject.division).to eq 2
    end
  end

  describe '#pow' do
    it 'returns pow of two numbers' do
      expect(subject.pow).to eq 100000
    end
  end

  describe '#division_remainder' do
    it 'returns remainder of a division' do
      expect(subject.division_remainder).to eq 0
    end
  end
end
