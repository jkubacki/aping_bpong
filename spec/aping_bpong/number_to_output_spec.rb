require 'spec_helper'
require './lib/aping_bpong/number_to_output'

RSpec.describe ApingBpong::NumberToOutput do
  subject { described_class.new.call(number:) }

  context 'when the number is divisible by 3, but not by 5' do
    let(:number) { 3 * 4 }

    it { is_expected.to eq('APing') }
  end

  context 'when the number is divisible by 5 but not by 3' do
    let(:number) { 2 * 5 }

    it { is_expected.to eq('BPong') }
  end

  context 'when the number is divisible by 3 and 5' do
    let(:number) { rand(1..100) * 3 * 5 }

    it { is_expected.to eq('APingBPong') }
  end

  context 'when the number is not divisible by 3 or 5' do
    let(:number) { 7 }

    it { is_expected.to eq(7) }
  end
end
