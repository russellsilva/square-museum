#!/usr/bin/env ruby

require './square-museum.rb'

given_rooms = []
(0 .. 11).each do |i|
  given_rooms <<
    (0 .. 11).map do |j|
      Room.new(true)
    end
end

given_rooms[0][0].stationed_guard = 'X'
given_rooms[11][11].stationed_guard = '|'

museum = SquareMuseum.new(given_rooms)

museum.rooms.each do |row|
  row.each do |room|
    stationed_guard = room.stationed_guard
    supervising_guard = room.supervising_guard
    if stationed_guard
      print "#{stationed_guard}#{stationed_guard}"
    elsif supervising_guard
      print "#{supervising_guard} "
    elsif !room.is_open?
      print "__"
    else
      fail 'invalid room state'
    end
  end
  puts
end
