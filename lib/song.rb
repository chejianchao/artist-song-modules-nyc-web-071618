require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end
  extend Findable
  
  def artist=(artist)
    @artist = artist
  end

  extend Memorable
  # def self.reset_all
  #   @@songs.clear
  # end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  # def self.count
  #   self.all.count
  # end

  def self.all
    @@songs
  end
end
