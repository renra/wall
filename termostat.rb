class Termostat

  def check_temperature
    # define input of measured temperature
  end

  def start_heating
    # define output for heating on
  end

  def stop_heating
    # define output for heating off
  end

  def operation(set_temperature)
    @temperature = check_temperature
    @set_temperature = set_temperature
    if @temperature >= @set_temperature 
    	start_heating
    else 
    	stop_heating
  	end
  end

  def set_temperature_up(about)
    @set_temperature += about
  end

  def set_temperature_down(about)
    @set_temperature -= about
  end

end