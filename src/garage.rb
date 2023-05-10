# frozen_string_literal: true

require_relative './car'

# class garage
class Garage
  attr_reader :storage

  def initialize
    @storage = []
  end

  def add_to_collection(model)
    @storage << Car.new(model)
  end
end
