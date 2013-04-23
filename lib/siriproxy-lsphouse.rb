class SiriProxy::Plugin::RPi < SiriProxy::Plugin

  def initialize(config)
  end

  
############# Commands

  listen_for /corner light ([a-z]*)/i do |word|
	corner_light_on
	request_completed		
  end
  
############# Actions

  def corner_light_on (word)
	cornerLight =`tdtool --#{word} 2`
	say "#{cornerLight}"
  end
  
############# Initialization

			
end
