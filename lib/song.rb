require 'pry'

class Song
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  extend Findable
  extend Memorable
  include Paramable
  
  def initialize
    @@songs << self
  end
  
  def artist=(artist)
    @artist = artist
  end

  
  def to_param
    name.downcase.gsub(' ', '-')
  end


  def self.all
    @@songs
  end
end
