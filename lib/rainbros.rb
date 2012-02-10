require "rainbros/version"

module Rainbros
  module_function
  def bro_it_out!
    if ARGV[0] && ARGV[0] == "forever"
      while true
        system('dicks | lolcat')
      end
    else
      4.times { system('dicks | lolcat') }
    end
  end
end
