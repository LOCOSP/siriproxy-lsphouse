
class SiriProxy::Plugin::RPi < SiriProxy::Plugin

  def initialize(config)
  end

  
############# Commands

  listen_for /living room sidelights on/i do
  light_lr_corner
	request_completed		
  end
  
############# Actions

  def light_lr_corner
	`tdtool --on 2`
	say "lights are ON"
  end
  
############# Initialization

			
end
