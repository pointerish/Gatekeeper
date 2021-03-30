require 'httparty'

class ValidUrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value.present?
      HTTParty.get(value).ok?
    end
  end
end

class Link < ApplicationRecord
  include Hashid::Rails
  validates :url, presence: true, valid_url: true
end
