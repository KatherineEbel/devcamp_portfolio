class Portfolio < ApplicationRecord
  include Placeholder
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body, :main_image, :thumb_image

  # callback
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator 600, 400
    self.thumb_image ||= Placeholder.image_generator 350, 200
  end

  # custom scopes /(queries)
  # def self.angular
  #   where(subtitle: 'Angular')
  # end

  # scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }
end
