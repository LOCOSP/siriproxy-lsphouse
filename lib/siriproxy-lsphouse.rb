class SiriProxy::Plugin::RPi < SiriProxy::Plugin

  def initialize(config)
  end

  
############# Commands

  listen_for /lights on/i do
	light_on
	request_completed		
  end
  
############# Actions

  def light_on
	`tdtool --on 2`
	say "lights are ON"
  end
  
############# Initialization

			
end
