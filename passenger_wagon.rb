class PassengerWagon < Wagon
  attr_reader :free_seats, :busy_seats, :number_of_seats

  def initialize(number_of_seats)
    super
    @type = :passenger
    @number_of_seats = number_of_seats
    @free_seats = number_of_seats
    @busy_seats = 0 
  end

  def take_seat
    raise "Нет свободного места" if @free_seats == 0
    @busy_seats += 1
    @free_seats -= 1
  end
end