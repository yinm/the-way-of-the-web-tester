#---
# Excerpted from "The Way of the Web Tester",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/jrtest for more book information.
#---
class PlayerMock

  attr_accessor :connector

  def initialize(connector)
    @connector = connector
  end

  def playTrack(track)
    if !@connector.is_connected
      @connector.connect
    end

    return @connector.handle_request(track)
  end
end

class PlayerNoMock

  attr_accessor :connector

  def initialize
    @connector = Connector.new
  end

  def playTrack(track)
    if !@connector.is_connected
      @connector.connect
    end

    return @connector.handle_request(track)
  end
end

