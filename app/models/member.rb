class Member < ApplicationRecord
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photo_url

  def initialize(attributes)
    @name       = attributes[:name]
    @allies      = attributes[:allies]
    @enemies      = attributes[:enemies]
    @affiliation   = attributes[:affiliation]
    @photo   = attributes[:photo_url]
  end
end