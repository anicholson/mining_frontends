gem 'dispel'
require 'dispel'

Dispel::Screen.open do |screen|
	  Dispel::Keyboard.output :timeout => 0.5 do |key|
		      if key == :timeout
			            screen.draw "The time is #{Time.now}"
				        elsif key == :"Ctrl+c"
						      break
						          else
								        screen.draw "You pressed #{key}"
									    end
		        end
end
