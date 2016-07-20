
require './check_temperature'
require './heating'
require './stop_heating'

class Termostat

	def operation(set_temperature)
    	@temperature = check_temperature
		@set_temperature = set_temperature

		if @temperature >= @set_temperature then heating
											else stop_heating
	end

	def set_temperature_up(about)
		@set_temperature += about
	end

	def set_temperature_down(about)
		@set_temperature -= about
	end


end


