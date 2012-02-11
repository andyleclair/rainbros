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
      bros = ARGV.first || 4
      
      if (bros = bros.to_i) > 0
        bros.times { exit! unless system(cmd) }
      else
        system("echo 'y u no want rainbros?' | lolcat")
      end
    end
  end
end
