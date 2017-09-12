class Wagon
  include Maker
  include InstanceCounter

  attr_reader :type

  def initialize(place)
    register_instance
  end
end
