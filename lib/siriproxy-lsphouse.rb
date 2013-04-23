class SiriProxy::Plugin::RPi < SiriProxy::Plugin

  def initialize(config)
  end

  
############# Commands

  listen_for (/turn (on|off) sidelight/i) do |command|
	command_sidelight(command.downcase.strip)
	request_completed
  end
  
    listen_for (/turn (on|off) gallery/i) do |command|
	command_gallery(command.downcase.strip)
	request_completed
  end
  
    listen_for (/turn (on|off) bed light/i) do |command|
	command_bed_light(command.downcase.strip)
	request_completed
  end
  
############# Actions

  def command_sidelight(command)
	`tdtool --#{command} 3`
	say "Sidelight is now turned #{command}."
  end
  
    def command_gallery(command)
	`tdtool --#{command} 2`
	say "Gallery is now turned #{command}."
  end
  
    def command_bed_light(command)
	`tdtool --#{command} 1`
	say "Bed light is now turned #{command}."
  end
  
############# Initialization

			
end
