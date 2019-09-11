class ControlController < ApplicationController
	def saludo
	end
	
	def zapatica
    	@saludo = 'Hello!!! Alejo!'
    	@texto1 = 'This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.'
  	end
end
