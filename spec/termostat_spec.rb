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

  describe '#heating?, #set_temperature' do
    subject { termostat.heating? }

    context 'set temperature is not greater than current temperature' do
      before do
        termostat.set_temperature = 0
      end

      it { expect(subject).to eql false }
    end

    context 'set temperature is greater than current temperature' do
      before do
        termostat.set_temperature = 100
      end

      it { expect(subject).to eql true }
    end
  end
end
