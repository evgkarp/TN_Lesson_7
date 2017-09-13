class CargoWagon < Wagon
  attr_reader :free_volume, :busy_volume
  
  def initialize(total_volume)
    super
    @type = :cargo
    @total_volume = total_volume
    @free_volume = total_volume
    @busy_volume = 0 
  end

  def occupy_volume(volume)
    raise "Нет свободного объема" if @free_volume == 0
    raise "Занимаемый объем больше, чем доступный (#{@free_volume})" if volume > @free_volume
    @busy_volume += volume
    @free_volume = @total_volume - @busy_volume
  end
end