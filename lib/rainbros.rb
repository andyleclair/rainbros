require "rainbros/version"

module Rainbros
  module_function
  def bro_it_out!
    cmd = 'dicks | lolcat'
    if ARGV[0] && ARGV[0] == "forever"
      while true
        exit! unless system(cmd)
      end
    else
      4.times { system(cmd) }
    end
  end
end
