class Hotel
  def initialize(rooms:)
    @rooms = rooms
  end

  def check_availability(booking_request)
    existing_available_rooms.select do |existing_available_room|
      existing_available_room.accommodates >= booking_request.guests
    end
  end

  private

  attr_reader :rooms

  def existing_available_rooms
    rooms.select { |room| room.available? }
  end
end