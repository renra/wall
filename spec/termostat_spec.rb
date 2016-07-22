require 'spec_helper'
require_relative '../termostat'

describe Termostat do
  let(:termostat) { Termostat.new }

  describe '#temperature' do
    subject { termostat.temperature }

    it { expect(subject).to eql Termostat::DEFAULT_TEMPERATURE }
  end

  describe '#set_temperature' do
    subject { termostat.set_temperature }

    context 'temperature set manually' do
      let(:desired_temperature) { 40 }

      before do
        termostat.set_temperature = desired_temperature
      end

      it { expect(subject).to eql desired_temperature }
    end

    context 'default' do
      it { expect(subject).to eql Termostat::DEFAULT_TEMPERATURE }
    end
  end

  describe '#heating?' do
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
