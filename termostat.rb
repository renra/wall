class Termostat
attr_accessor :set_temperature

	def initialize
		@set_temperature = @temperature = 20
	end

	def check_temperature
  	@temperature
  	# define input of measured temperature
  end

  def heating?
    if @set_temperature > @temperature 
    	return true
    	start_heating
    else 
    	return false
    	stop_heating
  	end
	end

  private

  def start_heating
    # define output for heating on
  end

	def stop_heating
	  # define output for heating off
  end

end