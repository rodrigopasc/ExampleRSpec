require 'spec_helper'
require 'stack'

RSpec.describe Stack do
  subject { described_class.new }

  describe '#push' do
    it 'puts the element on top' do
      subject.push(1)
      expect do
        subject.push(2)
      end.to change{subject.top}.from(1).to(2)
    end
  end

  describe '#top' do
    it 'returns last element' do
      subject.push(3)
      subject.push(4)
      expect(subject.top).to eq 4
    end
  end

  describe '#pop' do
    it 'pops last element' do
      subject.push(5)
      subject.push(6)
      expect do
        subject.pop
      end.to change{subject.top}.from(6).to(5)
    end
  end

  describe '#clear' do
    it 'clear stack' do
      subject.push(5)
      subject.push(6)
      expect do
        subject.clear
      end.to change(subject, :elements).to([])
    end
  end
end
