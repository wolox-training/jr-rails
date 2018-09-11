require 'rails_helper'

describe Book do
  it 'validates presence of genre' do
    :genre.nil?
  end

  it 'validates presence of author' do
    :author.nil?
  end

  it 'validates presence of image' do
    :image.nil?
  end

  it 'validates presence of title' do
    :title.nil?
  end

  it 'validates presence of publisher' do
    :publisher.nil?
  end

  it 'validates presence of year' do
    :year.nil?
  end

  subject(:book) do
    described_class.new(
      genre: genre, author: author, image: image, title: title,
      publisher: publisher, year: year
    )
  end

  let(:genre)            { Faker::Book.genre }

  let(:author)             { Faker::Book.author }

  let(:image)                 { Faker::Internet.url }

  let(:title)              { Faker::Book.title }

  let(:publisher) { Faker::Book.publisher }

  let(:year) { Faker::Number.between(1900, 2018) }


  # it do
  #   is_expected.to be_valid
  # end

  # describe '#generate_verification_code' do
  #   context 'when a book is created' do
  #     it 'generates a random verification code' do
  #       described.save!
  #       expect(user.verification_code).to be_present
  #     end
  #   end
  # end

  describe '.create' do
    context 'when the genre is nil' do
      let(:genre) { nil }
      
      it do
        is_expected.to be_invalid
      end
    end

    context 'when the author is nil' do
      let(:author) { nil }

      it do
        is_expected.to be_invalid
      end
    end

    context 'when the image is nil' do
      let(:image) { nil }
      
      it do
        is_expected.to be_invalid
      end
    end

    context 'when the title is nil' do
      let(:title) { nil }

      it do
        is_expected.to be_invalid
      end
    end

    context 'when the publisher is nil' do
      let(:publisher) { nil }
      
      it do
        is_expected.to be_invalid
      end
    end

    context 'when the year is nil' do
      let(:year) { nil }

      it do
        is_expected.to be_invalid
      end
    end
  end
end