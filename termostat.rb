class Termostat
attr_accessor :set_temperature

	def initialize
		@set_temperature = @temperature = 20
	end

	def check_temperature
  	check_temperature = @temperature
  	# define input of measured temperature
  end

  def start_heating
    # define output for heating on
  end

	def stop_heating
    # define output for heating off
  end

  def operation
    if @set_temperature > @temperature 
    	return true
    	start_heating
    else 
    	return false
    	stop_heating
  	end
  
  end

end