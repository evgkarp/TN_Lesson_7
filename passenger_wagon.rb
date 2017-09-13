class PassengerWagon < Wagon
  attr_reader :free_seats, :busy_seats, :number_of_seats

  def initialize(number_of_seats)
    super
    @type = :passenger
    @number_of_seats = number_of_seats
    @free_seats = number_of_seats
    @busy_seats = 0 
  end

  def take_seat(number)
    raise "Нет свободных мест" if @free_seats == 0
    raise "Количество занимаемых мест больше, чем свободных (#{@free_seats})" if number > @free_seats
    @busy_seats += number
    @free_seats = @number_of_seats - @busy_seats
  end
end