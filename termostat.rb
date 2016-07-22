class Termostat
  DEFAULT_TEMPERATURE = 20
  DEFAULT_SET_TEMPERATURE = 22

  attr_reader :temperature, :set_temperature

  def initialize(temperature = DEFAULT_TEMPERATURE, set_temperature = DEFAULT_SET_TEMPERATURE)
    @set_temperature = set_temperature
    @temperature = temperature
    evaluate_temperature
  end

  def heating?
    @heating
  end

  def set_temperature=(desired_temperature)
    @set_temperature = desired_temperature
    evaluate_temperature

    true
  end

  private

  def evaluate_temperature
    @set_temperature > @temperature ? start_heating : stop_heating
  end

  def start_heating
    @heating = true
  end

  def stop_heating
    @heating = false
  end

end
