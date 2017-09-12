class CargoWagon < Wagon
  attr_reader :free_volume, :busy_volume
  
  def initialize(total_volume)
    super
    @type = :cargo
    @total_volume = total_volume
    @free_volume = total_volume
    @busy_volume = 0 
  end

  def occupy_volume
    raise "Нет свободного объема" if @free_volume == 0
    @busy_volume += 1
    @free_volume -= 1
  end
end