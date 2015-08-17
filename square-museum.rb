class SquareMuseum
  attr_reader :rooms

  def initialize(rooms)
    @rooms = rooms

    assign_guards
  end

  private
  def assign_guards
    return unless !guard_stations.empty?
    puts guard_stations.inspect
    first_guard = guard_stations.first[:guard]
    open_rooms.each do |room|
      room.supervising_guard = first_guard
    end
  end

  def open_rooms
    @rooms.flatten.select { |r| r.is_open? }
  end

  def guard_stations
    return @guard_stations if @guard_stations

    @guard_stations = []
    @rooms.each_index do |i|
      @rooms[i].each_index do |j|
        room = @rooms[i][j]
        if stationed_guard = room.stationed_guard
          @guard_stations << { i: i, j: j, guard: stationed_guard }
        end
      end
    end
    @guard_stations
  end
end

class Room
  attr_accessor :supervising_guard, :stationed_guard

  def initialize(is_open)
    @is_open = is_open
  end

  def is_open?
    @is_open
  end
end
