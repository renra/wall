require 'spec_helper'
require_relative '../termostat'

describe Termostat do
  let(:termostat) { Termostat.new }

  describe '#check_temperature' do
    subject { termostat.check_temperature }

    # Some default value, can be changed later
    it { expect(subject).to eql 20 }
  end

  describe '#set_temperature' do
    subject { termostat.set_temperature }

    # Some default value, can be changed later
    it { expect(subject).to eql 20 }
  end

  describe '#operation, #set_temperature' do
    subject { termostat.operation }

    context 'set temperature is not greater than current temperature' do
      before do
        @set_temperature = 0
      end

      it { expect(@heat).to eq false }
    end

    context 'set temperature is greater than current temperature' do
      before do
        @set_temperature = 100
      end

      it { expect(@heat).to eq true }
    end
  end
end
