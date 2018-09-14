require 'rails_helper'

describe Rent do
  it do
    should belong_to(:user)
  end

  it do
    should belong_to(:book)
  end

  subject(:rent) do
    described_class.new(
      user: user, book: book, from: from, to: to
    )
  end

  let(:user) { create(:user) }

  let(:book) { create(:book) }

  let(:from) { Time.zone.now.to_date }

  let(:to) { Faker::Date.between(Time.zone.now.to_date, 1.month.from_now) }


  it { is_expected.to be_valid }
end
