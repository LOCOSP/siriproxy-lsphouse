class SiriProxy::Plugin::RPi < SiriProxy::Plugin

  def initialize(config)
  end

  
############# Commands

  listen_for /corner light (on|off)/i do |command|
	corner_light_on (command.downcase.strip)
	request_completed		
  end
  
############# Actions

  def corner_light_on (command)
	`tdtool --#{command} 2`
	say "Corner lights ar #{command}"
  end
  
############# Initialization

			
end
