class Termostat

	def initialize
		@heat = false
		@set_temperature = @temperature = 20
	end

  def check_temperature
  	check_temperature = @temperature
  	# define input of measured temperature
  end

  def set_temperature
  	@set_temperature
    # define input of setting parapeter @set_temperature
  end

  def start_heating
  	@heat = true
    # define output for heating on
  end

	def stop_heating
		@heat = false
    # define output for heating off
  end

  def operation
    if @set_temperature > @temperature 
    	start_heating
    else 
    	stop_heating
  	end
  
  end

end