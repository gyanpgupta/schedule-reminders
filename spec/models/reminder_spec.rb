require 'rails_helper'

RSpec.describe Reminder, type: :model do
  context 'validations' do
    context 'valid factories present' do
      it { build(:reminder).should be_valid }
    end

    context 'title' do
      context 'should be valid' do
        let(:valid) { build(:reminder, title: 'title') }
        it { expect(valid).to be_valid }
      end

      context 'should be invalid' do
        let(:invalid) { build(:reminder, title: nil) }
        it { expect(invalid).not_to be_valid }
      end
    end

    context 'description' do
      context 'should be valid' do
        let(:valid) { build(:reminder, description: 'description') }
        it { expect(valid).to be_valid }
      end

      context 'should be invalid' do
        let(:invalid) { build(:reminder, description: nil) }
        it { expect(invalid).not_to be_valid }
      end
    end

    context 'month_day' do
      context 'should be valid' do
        let(:valid) { build(:reminder, month_day: 1) }
        it { expect(valid).to be_valid }
      end

      context 'should be invalid' do
        let(:invalid) { build(:reminder, month_day: nil) }
        it { expect(invalid).not_to be_valid }
      end
    end

    context 'month_direction' do
      context 'should be valid' do
        let(:valid) { build(:reminder, month_direction: 1) }
        it { expect(valid).to be_valid }
      end

      context 'should be invalid' do
        let(:invalid) { build(:reminder, month_direction: nil) }
        it { expect(invalid).not_to be_valid }
      end
    end

    context 'time' do
      context 'should be valid' do
        let(:valid) { build(:reminder, time: Time.now) }
        it { expect(valid).to be_valid }
      end

      context 'should be invalid' do
        let(:invalid) { build(:reminder, time: nil) }
        it { expect(invalid).not_to be_valid }
      end
    end
  end

  context 'should be scheduled? return truthy or falsy value' do
    let(:reminder) { build(:reminder, month_day: 1, month_direction: 'start_of_month') }
    let(:time1) { Time.new(2020, 1, 1, 0, 0) }
    let(:time2) { Time.new(2020, 1, 1, 0, 30) }

    it { expect(reminder.scheduled?(time1)).to be_truthy }
    it { expect(reminder.scheduled?(time2)).to be_falsy }
  end

  context 'should be month_schedule_day return valid value' do
    let(:reminder1) { build(:reminder, month_day: 1, month_direction: 'start_of_month') }
    let(:reminder2) { build(:reminder, month_day: 1, month_direction: 'end_of_month') }

    it { expect(reminder1.month_schedule_day).to eq 1 }
    it { expect([28, 29 , 30 , 31]).to include(reminder2.month_schedule_day) }
    it { expect(reminder2.month_schedule_day).to eq Time.days_in_month(Date.today.month) - 1 }
  end
end
