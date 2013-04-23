class SiriProxy::Plugin::RPi < SiriProxy::Plugin

  def initialize(config)
  end

  
############# Commands

  listen_for (/turn (on|off) sidelight/i) do |command|
	command_sidelight(command.downcase.strip)
	request_completed
  end
  
############# Actions

  def command_sidelight(command)
	`tdtool --#{command} 2`
	say "Turning #{command} sidelight now."
  end
  
############# Initialization

			
end
