require 'spec_helper'
require 'bank'

RSpec.describe Bank do
  subject { Bank.new }

  describe '#balance' do
    it 'returns balance of bank account' do
      subject.deposit(10)
      subject.withdraw(5)
      expect(subject.balance).to eq 5
    end
  end

  describe '#deposit' do
    it 'deposits money in bank' do
      subject.deposit(10)
      expect do
        subject.deposit(30)
      end.to change{subject.balance}.from(10).to(40)
    end
  end

  describe '#withdraw' do
    it 'withdraw money from bank' do
      subject.withdraw(50)
      expect do
        subject.withdraw(10)
      end.to change{subject.balance}.from(-50).to(-60)
    end
  end

  describe '#situation' do
    it 'returns situation of bank account' do
      subject.deposit(5)
      subject.withdraw(10)
      expect(subject.situation).to eq '-5 - Negative'
    end
  end
end
