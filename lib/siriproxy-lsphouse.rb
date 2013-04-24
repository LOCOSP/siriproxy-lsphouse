class SiriProxy::Plugin::LSPHouse < SiriProxy::Plugin

  def initialize(config)
  end

  
############# Commands
  
  listen_for (/tellstick check/i) do 
	telldus_status
	request_completed
  end
  
    listen_for (/start light service/i) do 
	telldus_start
	request_completed
  end

  listen_for (/turn (on|off) sidelight/i) do |command|
	command_sidelight(command)
	request_completed
  end
  
    listen_for (/turn (on|off) gallery/i) do |command|
	command_gallery(command)
	request_completed
  end
  
    listen_for (/turn (on|off) bedlight/i) do |command|
	command_bed_light(command)
	request_completed
  end
  
############# Actions

  def telldus_status
	status = `service telldusd status`
	say "#{status}"
  end
  
    def telldus_start
	start = `service telldusd start`
	say "#{start}"
  end

  def command_sidelight(command)
	`/usr/bin/tdtool --#{command} 2`
	say "Sidelight is now turned #{command}."
  end
  
    def command_gallery(command)
	`/usr/bin/tdtool --#{command} 3`
	say "Gallery is now turned #{command}."
  end
  
    def command_bed_light(command)
	`/usr/bin/tdtool --#{command} 1`
	say "Bed light is now turned #{command}."
  end
  
############# Initialization

			
end
