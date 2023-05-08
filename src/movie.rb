# frozen_string_literal: true

require_relative './actor'

# class moview
class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    return unless actor.ready?

    actor.act
    actor.fall_off_ladder
    actor.light_on_fire
  end
end

actor = Actor.new('Brad pitt')
movie = Movie.new(actor)
movie.start_shooting
