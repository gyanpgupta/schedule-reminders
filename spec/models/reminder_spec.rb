require 'rails_helper'

RSpec.describe Reminder, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"


  context 'validations' do
    context 'valid factories present' do
      it { build(:reminder).should be_valid }
    end

    context 'title' do
      context 'should be valid' do
        let(:valid) { build(:reminder) }
        it { expect(valid).to be_valid }
      end

      context 'should be invalid' do
        let(:invalid) { build(:reminder, title: nil ) }
        it { expect(invalid).not_to be_valid }
      end
    end


    context 'description' do
      context 'should be valid' do
        let(:valid) { build(:reminder) }
        it { expect(valid).to be_valid }
      end

      context 'should be invalid' do
        let(:invalid) { build(:reminder, description: nil ) }
        it { expect(invalid).not_to be_valid }
      end
    end


    context 'month_day' do
      context 'should be valid' do
        let(:valid) { build(:reminder) }
        it { expect(valid).to be_valid }
      end

      context 'should be invalid' do
        let(:invalid) { build(:reminder, month_day: nil ) }
        it { expect(invalid).not_to be_valid }
      end
   end


    context 'month_direction' do
      context 'should be valid' do
        let(:valid) { build(:reminder) }
        it { expect(valid).to be_valid }
      end

      context 'should be invalid' do
        let(:invalid) { build(:reminder, month_direction: nil ) }
        it { expect(invalid).not_to be_valid }
      end
    end


    context 'time' do
      context 'should be valid' do
        let(:valid) { build(:reminder) }
        it { expect(valid).to be_valid }
      end

      context 'should be invalid' do
        let(:invalid) { build(:reminder, time: nil) }
        it { expect(invalid).not_to be_valid }
      end
    end

  end

end
