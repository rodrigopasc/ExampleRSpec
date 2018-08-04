require 'spec_helper'
require 'calculator'

RSpec.describe Calculator do
  describe '#sum' do
    subject { Calculator.new(10, 5) }

    it 'returns sum of two numbers' do
      expect(subject.sum).to eq 15
    end
  end

  describe '#subtraction' do
    subject { Calculator.new(10, 5) }

    it 'returns subtraction of two numbers' do
      expect(subject.subtraction).to eq 5
    end
  end

  describe '#multiplication' do
    subject { Calculator.new(10, 5) }

    it 'returns multiplication of two numbers' do
      expect(subject.multiplication).to eq 50
    end
  end

  describe '#division' do
    subject { Calculator.new(10, 5) }

    it 'returns division of two numbers' do
      expect(subject.division).to eq 2
    end
  end
end
