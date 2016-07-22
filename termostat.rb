class Termostat
  DEFAULT_TEMPERATURE = 20

  attr_reader :temperature, :set_temperature

  def initialize
    @set_temperature = @temperature = DEFAULT_TEMPERATURE
    @heating = false
  end

  def heating?
    @heating
  end

  def set_temperature=(desired_temperature)
    @set_temperature = desired_temperature
    @set_temperature > @temperature ? start_heating : stop_heating
    true
  end

  private

  def start_heating
    @heating = true
  end

  def stop_heating
    @heating = false
  end

end
